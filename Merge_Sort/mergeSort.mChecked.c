#include <stdio.h>
#include <stdlib.h>
#define LENGTH  10
int main(void) {

    _TArray_ptr<int> lis_t : count(10) = (_TArray_ptr<int>)malloc<int>(10*sizeof(int));
    int* lis_t_t = (int*) malloc(10*sizeof(int));
    lis_t[0] = 48;
    lis_t[1] = 54;
    lis_t[2] = 92;
    lis_t[3] = 36;
    lis_t[4] = 13;
    lis_t[5] = 8;
    lis_t[6] = 92;
    lis_t[7] = 53;
    lis_t[8] = 100;
    lis_t[9] = 100;

    lis_t_t[0] = 48;
    lis_t_t[1] = 54;
    lis_t_t[2] = 92;
    lis_t_t[3] = 36;
    lis_t_t[4] = 13;
    lis_t_t[5] = 8;
    lis_t_t[6] = 92;
    lis_t_t[7] = 53;
    lis_t_t[8] = 100;
    lis_t_t[9] = 100;

    return 0;
}
