//
//  sendpoint.h
//  sendpoint
//
//  Created by Isak on 15/02/2016.
//

#ifndef sendpoint_h
#define sendpoint_h


#endif /* sendpoint_h */


#include <stdio.h>
#include <curl/curl.h>
#include <stdlib.h>
#include <limits.h>
#include <errno.h>
#include <string.h>

#define TRUE 1;
#define FALSE 0;

typedef struct inputData {
    char *rawX;
    char *rawY;
    char *url;
    char *jsonObj;
} inputData;


/**
 Validates an input value and if valid extracts the data
 
 param: *buffer the input String
        *inData inputData with the extracted data
 
 return TRUE or FALSE depending on if the input string was in a valid
        format or not
 */
int isInputFormatValid(char *buffer, inputData *inData);

/**
 Takes user input data, validate it and if valid sends it as a json object to the server.
 
 param: *curl   pointer to the global curl instance
        inData  an instance of inputData containing the user input with
        the rawX, rawY and the URL.
 
 */
void handleInputData(CURL *curl, inputData inData);


/**
 Validate user supplied coordinates and makes sure they are valid and is number.
 
 param: *str        pointer to a string with containing the coordinate
 *coordinate pointer to the extracted coordinate
 
 return TRUE or FALSE depending on if the parsing was successful or not
 */
int parseCoordinate(char *str, long *coordinate);

/**
 Sends a string to the server over the HTTP protocol
 
 param: *curl   pointer to the global curl instance
 *url    string containg the URL where the data will be sent
 *data   string with the data that will be sent
 
 */
void sendCoordinateData(CURL *curl, char *url, char *data);

/**
 Generate a valid json object containing the coordinates of X and Y
 
 param: *jsonObj    the generated json object
 *x          the X coordinate
 *y          the Y coordinate
 */
void createJsonCoordObj(char *jsonObj, long *x, long *y);

/**
 Prints an error message regarding the coordinates
 
 param: coord   a char with the axis (example 'X')
 */
void printInvalidCoord(char coord);


/**
 Prints the usage instruction
 */
void printInstruction();