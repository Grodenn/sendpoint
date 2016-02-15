#include "sendpoint.h"

int main(int argc, char *argv[]) {
    
    int inputSize = 1024;
    CURL *curl = NULL;
    curl_global_init(CURL_GLOBAL_ALL);
    inputData *inData = calloc(1, sizeof(inputData));
    inData->jsonObj = calloc(1024, sizeof(char));
    char *buffer = calloc(inputSize, sizeof(char));
    
    int running = FALSE;
    
    if (argc == 2) {
        inData->url = argv[1];
        running = TRUE;
    } else if(argc == 4){
        inData->rawX = argv[1];
        inData->rawY = argv[2];
        inData->url = argv[3];
        handleInputData(curl, *inData);
    } else {
        printInstruction();
    }
    
    
    while(running && fgets(buffer, inputSize*sizeof(char), stdin)){
        
        if(isInputFormatValid(buffer, inData)){
            handleInputData(curl, *inData);
        } else {
            printInputInstruction();
        }
    }
    
    free(buffer);
    free(inData->jsonObj);
    free(inData);
    curl_global_cleanup();
    
    return EXIT_SUCCESS;
    
}


/**
 Validates an input value and if valid extracts the data
 
 param: *buffer the input String
        *inData inputData with the extracted data
 
 return TRUE or FALSE depending on if the input string was in a valid 
        format or not
 */
int isInputFormatValid(char *buffer, inputData *inData){
    int status = TRUE;
    char *x, *y;
    
    x = strtok (buffer, ",");
    y = strtok (NULL, ",\n\0");
    if(strtok(NULL, "") != NULL || x == NULL || y == NULL){
        status = FALSE;
    }
    inData->rawX = x;
    inData->rawY = y;

    return status;
}


/**
 Takes user input data, validate it and if valid sends it as a json object to the server.
 
 param: *curl   pointer to the global curl instance
        inData  an instance of inputData containing the user input with 
                the rawX, rawY and the URL.
 
 */
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

/**
 Validate user supplied coordinates and makes sure they are valid and is number. 
 
 param: *str        pointer to a string with containing the coordinate
        *coordinate pointer to the extracted coordinate
 
 return TRUE or FALSE depending on if the parsing was successful or not
 */
int parseCoordinate(char *str, long *coordinate){
    
    int base = 10, returnValue = FALSE;
    char *endptr;
    
    errno = 0;
    *coordinate = strtol(str, &endptr, base);
    
    if ((errno == ERANGE && (*coordinate == LONG_MAX || *coordinate == LONG_MIN))
        || (errno != 0 && *coordinate == 0)) {
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


/**
 Sends a string to the server over the HTTP protocol
 
 param: *curl   pointer to the global curl instance
        *url    string containg the URL where the data will be sent
        *data   string with the data that will be sent
 
 */
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
        }
        
        curl_slist_free_all(headers);
        curl_easy_cleanup(curl);
    }
    
}

/**
 Generate a valid json object containing the coordinates of X and Y
 
 param: *jsonObj    the generated json object
 *x          the X coordinate
 *y          the Y coordinate
 */
void createJsonCoordObj(char *jsonObj, long *x, long *y){
    sprintf(jsonObj, "{\"X\":%ld, \"Y\":%ld}", *x, *y);
}

/**
 Prints an error message regarding the coordinates
 
 param: coord   a char with the axis (example 'X')
 */
void printInvalidCoord(char coord){
    fprintf(stderr,"%c not a valid coordinate\n", coord);
}

/**
 Print the usage instruction for input at stdin
 */
void printInputInstruction(){
    fprintf(stderr, "usage: xx,yy\n");
}

/**
 Prints the usage instruction for input at commandline
 */
void printInstruction(){
    fprintf(stderr,"usage: sendpoint [x] [y] [url]\n");
}