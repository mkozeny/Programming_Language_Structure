#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "headers/set_node.h"
#include "headers/set.h"

int main()
{
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
	
	struct Set *set = (struct Set *)malloc(sizeof(struct Set));
	printf("Input file:\n");
	while (fscanf(ifp, "%s", input) != EOF) {
		token = malloc(strlen(input)*sizeof(char));
		strcpy(token, input);
		add(set, token);
		printf("%s\n", input);
	}
	printf("\nOutput file:\n");
	printSet(set);
	writeSetToFile(set,ofp);
	
	fclose(ifp);
	fclose(ofp);
	free(token);
	deallocateSet(set);
	return 0;
}