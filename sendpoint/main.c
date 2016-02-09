//
//  main.c
//  sendpoint
//
//  Created by Isak on 09/02/2016.
//

#include <stdio.h>
#include <curl/curl.h>
#include <stdlib.h>
#include <limits.h>
#include <errno.h>

void printInvalidCoord(char coord);
void printInstruction();
int parseCoordinate(char *str, long *val);
void sendPointData(char *url, char *data);

int main(int argc, char * argv[]) {
    
    if(argc == 4){
        
        char *jsonObj = calloc(1024, sizeof(char));
        char *url = calloc(1024, sizeof(char));
        
        long *x = calloc(1, sizeof(long));
        long *y = calloc(1, sizeof(long));
        
        if(parseCoordinate(argv[1], x)){
            printInvalidCoord('X');
            exit(EXIT_FAILURE);
        }
        if(parseCoordinate(argv[2], y)){
            printInvalidCoord('Y');
            exit(EXIT_FAILURE);
        }
        
        url = argv[3];
        
        sprintf(jsonObj, "{\"X\":%ld, \"Y\":%ld}", *x, *y);
        
        sendPointData(url, jsonObj);
        
        free(x);
        free(y);
        free(jsonObj);
        free(url);
    } else {
        printInstruction();
        exit(EXIT_FAILURE);
    }
    
    
    return EXIT_SUCCESS;
    
}

void printInvalidCoord(char coord){
    fprintf(stderr,"%c not a valid coordinate\n", coord);
    printInstruction();
}

void printInstruction(){
    fprintf(stderr,"usage: sendpoint [x] [y] [url]\n");
}


int parseCoordinate(char *str, long *val){
    
    int base = 10, returnValue = 0;
    char *endptr;
    
    errno = 0;
    *val = strtol(str, &endptr, base);
    
    if ((errno == ERANGE && (*val == LONG_MAX || *val == LONG_MIN))
        || (errno != 0 && *val == 0)) {
        returnValue = 1;
    }
    
    if (endptr == str) {
        returnValue = 1;
    }
    
    if (*endptr != '\0'){
        returnValue = 1;
    }
    
    return returnValue;
}




void sendPointData(char *url, char* data){
    CURL *curl;
    CURLcode res;
    
    curl_global_init(CURL_GLOBAL_ALL);
    
    curl = curl_easy_init();
    if(curl) {
        struct curl_slist *headers = NULL;
        headers = curl_slist_append(headers, "Accept: application/json");
        headers = curl_slist_append(headers, "Content-Type: application/json");
        headers = curl_slist_append(headers, "charsets: utf-8");
        
        curl_easy_setopt(curl, CURLOPT_CUSTOMREQUEST, "PUT");
        curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
        curl_easy_setopt(curl, CURLOPT_URL, url);
        curl_easy_setopt(curl, CURLOPT_POSTFIELDS, data);
        
        res = curl_easy_perform(curl);
        if(res != CURLE_OK){
            fprintf(stderr, "%s\n", curl_easy_strerror(res));
            exit(EXIT_FAILURE);
        }
        
        curl_easy_cleanup(curl);
    }
    curl_global_cleanup();
}