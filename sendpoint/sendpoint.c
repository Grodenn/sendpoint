#include "sendpoint.h"

int main(int argc, char *argv[]) {
    
    int BUFFER_SIZE = 1024;
    
    CURL *curl = NULL;
    curl_global_init(CURL_GLOBAL_DEFAULT);
    inputData *inData = createDataObject();
    char *buffer = calloc(BUFFER_SIZE, sizeof(char));
    
    int running = FALSE;
    
    if (argc == 2) {
        inData->url = argv[1];
        running = TRUE;
    } else if(argc == 4){
        
        inData->url = argv[3];
        
        if(validateCoordinates(argv[1], argv[2], inData)){
            
            createJsonCoordObj(inData->jsonObj, inData->x, inData->y);
            sendJsonNetPacket(curl, inData->url, inData->jsonObj);
            
        } else {
            printInstruction();
        }
        
        
    } else {
        printInstruction();
    }
    
    
    while(running && fgets(buffer, BUFFER_SIZE*sizeof(char), stdin)){
        
        if(isInputFormatValid(buffer, inData)){
            
            createJsonCoordObj(inData->jsonObj, inData->x, inData->y);
            sendJsonNetPacket(curl, inData->url, inData->jsonObj);
            
        } else {
            printInputInstruction();
        }
    }
    
    free(buffer);
    freeDataObject(inData);
    curl_global_cleanup();
    
    return EXIT_SUCCESS;
    
}

/**
 Generates and allocates memory for a inputData object
 
 return a pointer to the object
 */
inputData* createDataObject(){
    inputData *inData = calloc(1, sizeof(inputData));
    inData->jsonObj = calloc(1024, sizeof(char));
    inData->x = calloc(1, sizeof(long));
    inData->y = calloc(1, sizeof(long));
    return inData;
}

/**
 Frees all memory allocated for the inputData object
 
 param: *inData pointer to the inputData object that will be freed
 */
void freeDataObject(inputData *inData){
    free(inData->jsonObj);
    free(inData->x);
    free(inData->y);
    free(inData);
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
    
    if(status && !validateCoordinates(x, y, inData)){
        status = FALSE;
    }

    return status;
}


/**
 Validates that the supplied coordinates is in the correct format
 prints an error message if it fails.
 
 param: *x      pointer to the x coordinate that should be validated
        *y      pointer to the x coordinate that should be validated
        *inData pointer to a inputData object
 
 return TRUE if successful, FALSE if one of the coordinates is incorrect
 */
int validateCoordinates(char *x, char *y, inputData *inData){
    int validCoords = TRUE;
    
    if(!isStringInteger(x, inData->x)){
        printInvalidCoord('X');
        validCoords = FALSE;
    }
    
    if(!isStringInteger(y, inData->y)){
        printInvalidCoord('Y');
        validCoords = FALSE;
    }
    
    return validCoords;
}

/**
 Validate a string and makes sure it is a number.
 
 param: *str        pointer to a string with the number
        *num        pointer to the extracted number
 
 return TRUE or FALSE depending on if the parsing was successful or not
 */
int isStringInteger(char *str, long *num){
    
    int base = 10, returnValue = TRUE;
    char *endptr;
    
    errno = 0;
    *num = strtol(str, &endptr, base);
    
    if ((errno == ERANGE && (*num == LONG_MAX || *num == LONG_MIN))
        || (errno != 0 && *num == 0)) {
        returnValue = FALSE;
    }
    
    if (endptr == str) {
        returnValue = FALSE;
    }
    
    if (*endptr != '\0'){
        returnValue = FALSE;
    }
    
    return returnValue;
}


/**
 Sends a json object to the server over the HTTP protocol
 
 param: *curl   pointer to the global curl instance
        *url    string containg the URL where the data will be sent
        *data   string with the data that will be sent
 
 */
void sendJsonNetPacket(CURL *curl, char *url, char* data){
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