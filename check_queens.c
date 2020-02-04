////////////////////////////////////////////////////////////////////////////////
// Main File:        check_queens.c
// This File:        check_queens.c
// Other Files:      (name of all other files if any)
// Semester:         CS 354 SPRING 2019
//           
// Author:           Shihan
// Email:            scheng93@wisc.edu
// CS Login:         shihan
//           
/////////////////////////// OTHER SOURCES OF HELP //////////////////////////////
//                   fully acknowledge and credit all sources of help,
//                   other than Instructors and TAs.
//           
// Persons:          Identify persons by name, relationship to you, and email.
//                   Describe in detail the the ideas and help they provided.
//           
// Online sources:   avoid web searches to solve your problems, but if you do
//                   search, be sure to include Web URLs and description of 
//                   of any information you find.
////////////////////////////////////////////////////////////////////////////////

#include <stdio.h> 
#include <stdlib.h>  
#include <string.h>   
 
char *COMMA = ",";
  
/* COMPLETED:
 * Retrieves from the first line of the input file,
 * the number of rows and columns for the board.
 * 
 * fp: file pointer for input file
 * rows: pointer to number of rows
 * cols: pointer to number of columns
 */
void get_dimensions(FILE *fp, int *rows, int *cols) {  
        char *line = NULL;  
        size_t len = 0;  
        if (getline(&line, &len, fp) == -1) {  
                printf("Error in reading the file\n");  
                exit(1);  
        }  
           
        char *token = NULL; 
        token = strtok(line, COMMA);
        *rows = atoi(token); 
           
        token = strtok(NULL, COMMA); 
        *cols = atoi(token);
}      


/* Returns 1 if and only if there exists at least one pair
 * of queens that can attack each other.
 * Otherwise returns 0.
 * 
 * board: heap allocated 2D board
 * rows: number of rows
 * cols: number of columns
 */
int check_queens(int **board, int rows, int cols) {  
    int *count_rows;
    int *count_cols;
    int *count_dia_L;
    int *count_dia_R;
    
    // Allocate memory spaces
    count_rows = malloc(sizeof(int) * rows);
    count_cols = malloc(sizeof(int) * cols);
    count_dia_L = malloc(sizeof(int) * (rows + cols - 1));
    count_dia_R = malloc(sizeof(int) * (rows + cols - 1));
    
    // Track the 2D array
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            if (*(*(board + i) + j) == 1) {
                int count_dia = i - j;
                if (count_dia < 0) {
                    count_dia += rows + cols - 1;
                }
                *(count_rows + i) += 1;
                *(count_cols + j) += 1;
                *(count_dia_L + i + j) += 1;
                *(count_dia_R + count_dia) += 1;
            }
        }
    }
    
    for (int i = 0; i < rows; i++) {
        if (*(count_rows + i) > 1) {
            return 1;
        }
    }
    for (int i = 0; i < cols; i++) {
        if (*(count_cols + i) > 1) {
            return 1;
        }
    }
    for (int i = 0; i < rows + cols - 1; i++) {
        if (*(count_dia_L + i) > 1) {
            return 1;
        }
    }

    for (int i = 0; i < rows + cols - 1; i++) {
        if (*(count_dia_R + i) > 1) {
            return 1;
        }
    }

        return 0;
}     


/* of queens that can attack each other, and false otherwise
 * 
 * argc: CLA count
 * argv: CLA value 
 */
int main(int argc, char *argv[]) {        

        // Check if number of command-line arguments is correct.
        if (argc != 2) {
		printf("Usage: ./check_queens <input_filename>\n");
		exit(1);
	}

        //Open the file and check if it opened successfully.
        FILE *fp = fopen(*(argv + 1), "r");
        if (fp == NULL) {
                printf("Cannot open file for reading\n");
                exit(1);
        }


        //Declare local variables.
        int rows, cols;


        //Call get_dimensions to retrieve the board dimensions.
	get_dimensions(fp, &rows, &cols);


        //Dynamically allocate a 2D array of dimensions retrieved above.
        int **store_board = malloc(sizeof (int*) * rows);
	for (int i = 0; i < rows; i++) {
		store_board[i] = malloc(sizeof (int) * cols);
	}
        //Read the file line by line.
        //Tokenize each line wrt comma to store the values in your 2D array.
        char *line = NULL;
        size_t len = 0;
        char *token = NULL;
        for (int i = 0; i < rows; i++) {

                if (getline(&line, &len, fp) == -1) {
                        printf("Error while reading the file\n");
                        exit(1);        
                }

                token = strtok(line, COMMA);
                for (int j = 0; j < cols; j++) {
                        //Complete the line of code below
                        //to initialize your 2D array.
                        /* ADD ARRAY ACCESS CODE HERE */
		       	*(*(store_board + i) + j) = atoi(token);
                        token = strtok(NULL, COMMA);    
                }
        }

        //Call the function check_queens and print the appropriate
        //output depending on the function's return value.
      	if (check_queens(store_board, rows, cols)) {
        printf("true\n");
        }
    	else {
        printf("false\n");
   	} 
        
        //Free all dynamically allocated memory.
	for (int i = 0; i < rows; i++) {
        free(store_board[i]);
   	 }
   	 free(store_board);

        //Close the file.
        if (fclose(fp) != 0) {
                printf("Error while closing the file\n");
                exit(1);        
        }

        return 0;
}      
