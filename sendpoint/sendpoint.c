//
//  sendpoint.c
//
//  Created by Isak on 09/02/2016.
//

#include <stdio.h>
#include <curl/curl.h>
#include <stdlib.h>
#include <limits.h>
#include <errno.h>

#define TRUE 1;
#define FALSE 0;

typedef struct inputData {
    char *rawX;
    char *rawY;
    char *url;
    char *jsonObj;
} inputData;

inputData extractInputData(char *buffer, inputData inData);
void handleInputData(CURL *curl, inputData inData);
void createJsonCoordObj(char *jsonObj, long *x, long *y);
void printInvalidCoord(char coord);
void printInstruction();
int parseCoordinate(char *str, long *val);
void sendCoordinateData(CURL *curl, char *url, char *data);

int main(int argc, char *argv[]) {
    
    CURL *curl;
    curl_global_init(CURL_GLOBAL_ALL);
    inputData inData;
    inData.jsonObj = calloc(1024, sizeof(char));
    
    char *buffer = calloc(1024, sizeof(char));
    
    int running = TRUE;
    
    if (argc == 2) {
        inData.url = argv[2];
    } else if(argc == 4){
        inData.rawX = argv[1];
        inData.rawY = argv[2];
        inData.url = argv[3];
        handleInputData(curl, inData);
    } else {
        printInstruction();
        running = FALSE;
    }
    
    
    while(running && fgets(buffer, sizeof(buffer), stdin)){
        
        inData = extractInputData(buffer, inData);
        handleInputData(curl, inData);
        
    }
    
    free(buffer);
    free(inData.jsonObj);
    curl_global_cleanup();
    
    return EXIT_SUCCESS;
    
}

inputData extractInputData(char *buffer, inputData inData){

    //Fix buffer extraction and error handeling
    
    return inData;
}

void handleInputData(CURL *curl, inputData inData){
    
    long *x = calloc(1, sizeof(long));
    long *y = calloc(1, sizeof(long));
    
    int sendObj = TRUE;
    
    if(parseCoordinate(inData.rawX, x)){
        printInvalidCoord('X');
        sendObj = FALSE;
    } else if(parseCoordinate(inData.rawY, y)){
        printInvalidCoord('Y');
        sendObj = FALSE;
    }
    
    if(sendObj){
        createJsonCoordObj(inData.jsonObj, x, y);
        sendCoordinateData(curl, inData.url, inData.jsonObj);
    }
    
    free(x);
    free(y);
}

void createJsonCoordObj(char *jsonObj, long *x, long *y){
    sprintf(jsonObj, "{\"X\":%ld, \"Y\":%ld}", *x, *y);
}

void printInvalidCoord(char coord){
    fprintf(stderr,"%c not a valid coordinate\n", coord);
    printInstruction();
}

void printInstruction(){
    fprintf(stderr,"usage: sendpoint [x] [y] [url]\n");
}


int parseCoordinate(char *str, long *val){
    
    int base = 10, returnValue = FALSE;
    char *endptr;
    
    errno = 0;
    *val = strtol(str, &endptr, base);
    
    if ((errno == ERANGE && (*val == LONG_MAX || *val == LONG_MIN))
        || (errno != 0 && *val == 0)) {
        returnValue = TRUE;
    }
    
    if (endptr == str) {
        returnValue = TRUE;
    }
    
    if (*endptr != '\0'){
        returnValue = TRUE;
    }
    
    return returnValue;
}


void sendCoordinateData(CURL *curl, char *url, char* data){
    CURLcode res;
    
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
            //exit(EXIT_FAILURE);
        }
        
        curl_easy_cleanup(curl);
    }
    
}