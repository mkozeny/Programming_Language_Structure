#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "headers/tuple.h"

void init_tuple(struct TUPLE *tuple, char* str) {
	tuple->numbers = malloc(strlen(str) * sizeof(char));
	tuple->characters = malloc(strlen(str) * sizeof(char));;
	tuple->pointerNumbers = 0;
	tuple->pointerCharacters = 0;
}

void add_number_to_tuple(struct TUPLE *tuple, char num) {
	tuple->numbers[tuple->pointerNumbers] = num;
	tuple->pointerNumbers++;
}
void add_character_to_tuple(struct TUPLE *tuple, char c) {
	tuple->characters[tuple->pointerCharacters] = c;
	tuple->pointerCharacters++;
}
void print_tuple(struct TUPLE *tuple) {
	printf("(\"%s\",\"%s\")", tuple->numbers, tuple->characters);
	printf("\r\n");
}
