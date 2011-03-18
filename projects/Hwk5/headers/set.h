#ifndef SET_H_
#define SET_H_

#endif /*SET_H_*/

struct Set {
	struct SetNode * first;
	int size;
};

void add( struct Set * set, char * word);
int isMember(struct Set * set, char * word);
void printSet(struct Set * set);
void writeSetToFile(struct Set * set, FILE * file);
void deallocateSet(struct Set *set);