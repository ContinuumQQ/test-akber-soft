#include <stdio.h>

struct Registers{
	unsigned char A;
        unsigned char B;
        unsigned char C;
        unsigned char D;
 };

/*
Status
*/
#define SUCCESS 0
#define ERROR 1

/*
Registers
*/
#define ADDRA = 5
#define ADDRB = 6
#define ADDRC = 7
#define ADDRD = 8

/*
Commands
*/
#define HLT 0
#define ADD 1
#define SUB 2
#define MOV 3
#define IR 4

/*
Commands  Functions
*/
int hlt();
unsigned char add(unsigned char regOne, unsigned char regTwo);
unsigned char sub(unsigned char regOne, unsigned char regTwo);
unsigned char mov(unsigned char regOne, unsigned char number);
void ir();

/*
Helper Functions
*/
int Registers checkArg(unsigned char com, unsigned char argOne, unsigned char argTwo);


int main() {
    	struct Registers reg = {0};



    	return hlt();
}


int hlt()
{
    	return 0;
}


unsigned char add(unsigned char regOne, unsigned char regTwo)
{
    	return regOne + regTwo;
}


unsigned char sub(unsigned char regOne, unsigned char regTwo)
{
    	return regOne - regTwo;
}


unsigned char mov(unsigned char regOne, unsigned char number)
{
    	regOne = number;
    	return regOne;
}


void ir(struct Registers *reg)
{
    	printf("%d %d %d %d\n", reg -> A, reg -> B, reg -> C, reg -> D);
}


int checkArg(unsigned char com, unsigned char argOne, unsigned char argTwo)
{
	switch(com){
		case HLT:
			return SUCCESS;
		case ADD:
			if()

	}

}