#include <stdio.h>
#include <stdlib.h>
//#include <stdnoreturn.h>
#include <stdtainted.h>

#pragma CHECKED ON 
// Function to sort the numbers using poin
_Tainted int* tainted_sort (int n, _TArray_ptr<int> ptr);
// Driver code
 int main(void)
{
	int n = 6;

	int arr _Checked[] = { 0, 23, 14, 12, 9,39};
    _TPtr<int>temp = (_TPtr<int>)t_malloc(10*sizeof(int),"temp");
    temp[0]  = 0;
    temp[1]  = 23;
    temp[2]  = 14;
    temp[3]  = 39;
    temp[4]  = 12;
    temp[5]  = 9;

    if(c_isTaintedPointerToTaintedMem(temp))
    {
        printf("Pointer belongs to tainted memory and has data %d", temp[0]);
    }

    int* host_pointer = (int*)malloc(10*sizeof(int));
    host_pointer[0] = 0;
    if(!c_isPointerToTaintedMem(host_pointer))
    {
        printf("\nPointer belongs to Host memory and has data %d", host_pointer[0]);
    }

    // Yeah, this sort of works -->
    int *r34;
    r34 = tainted_sort(n, temp);
    printf(" %d", r34[0]);
    printf(" %d", r34[1]);
    printf(" %d", r34[2]);
    printf(" %d", r34[3]);
    printf(" %d", r34[4]);
    printf(" %d", r34[5]);

    return 0;
}

