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
    long *x;
    long *y;
    char *url;
    char *jsonObj;
} inputData;


/**
 Generates and allocates memory for a inputData object
 
 return a pointer to the object
 */
inputData* createDataObject();

/**
 Frees all memory allocated for the inputData object
 
 param: *inData pointer to the inputData object that will be freed
 */
void freeDataObject(inputData *inData);

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
void handleInputData(CURL *curl, inputData *inData);

/**
 Validates that the supplied coordinates is in the correct format
 prints an error message if it fails.
 
 param: *x      pointer to the x coordinate that should be validated
 *y      pointer to the x coordinate that should be validated
 *inData pointer to a inputData object
 
 return TRUE if successful, FALSE if one of the coordinates is incorrect
 */
int validateCoordinates(char *x, char *y, inputData *inData);

/**
 Validate user supplied coordinates and makes sure they are valid and is number.
 
 param: *str        pointer to a string with containing the coordinate
 *coordinate pointer to the extracted coordinate
 
 return TRUE or FALSE depending on if the parsing was successful or not
 */
int isStringInteger(char *str, long *num);

/**
 Sends a string to the server over the HTTP protocol
 
 param: *curl   pointer to the global curl instance
 *url    string containg the URL where the data will be sent
 *data   string with the data that will be sent
 
 */
void sendJsonNetPacket(CURL *curl, char *url, char *data);

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
 Print the usage instruction for input at stdin
 */
void printInputInstruction();

/**
 Prints the usage instruction
 */
void printInstruction();