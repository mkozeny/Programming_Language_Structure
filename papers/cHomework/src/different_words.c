#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "headers/set_node.h"
#include "headers/set.h"

int main() {
	FILE *ifp, *ofp;
	char *mode = "r";
	char outputFilename[] = "output.txt";
	char *input;
	char *token;

	ifp = fopen("input.txt", mode);

	if (ifp == NULL) {
		fprintf(stderr, "Can't open input file input.txt!\n");
		exit(1);
	}

	ofp = fopen(outputFilename, "w");

	if (ofp == NULL) {
		fprintf(stderr, "Can't open output file %s!\n",
		outputFilename);
		exit(1);
	}

	/*allocating Set structure*/
	struct Set *set = (struct Set *)malloc(sizeof(struct Set));
	printf("Input file:\n");
	/*reading from file token by token and put it to variable input*/
	while (fscanf(ifp, "%s", input) != EOF) {
		/*allocating of string*/
		token = malloc(strlen(input)*sizeof(char));
		/*cloning string because of putting it to the set structure
		 * because of using implementation of add() provided in task paper*/
		strcpy(token, input);
		/*adding string to set*/
		add(set, token);
		printf("%s\n", input);
	}
	printf("\nOutput file:\n");
	printSet(set);
	writeSetToFile(set, ofp);

	/*closes the input file associated with the stream and disassociates it*/
	fclose(ifp);
	/*closes the output file associated with the stream and disassociates it*/
	fclose(ofp);
	/*deallocating of variable set*/
	deallocateSet(set);
	/*no need to deallocate variable token, beacause this token is at the top of the set 
	 * and it is deallocated in method deallocateSet() step before*/
	return 0;
}