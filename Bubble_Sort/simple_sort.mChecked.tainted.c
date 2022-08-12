#include "/home/twinturbo/Desktop/checkedc-parson/tainted/W2Csimple_sort.mChecked.c"
#include "simple.h"
#define NULL (void*)(0)
#define CAR 100
#pragma CHECKED_SCOPE push 
#pragma CHECKED_SCOPE on
#define Square(x) ((x)*(x))
#define TWIN int
#define CUBE(x) ((x)*(x)*(x))

_Tainted void sort( _TPtr<int> argument_pointer)_Checked {


 return w2c_sort( c_fetch_sandbox_address(),
 c_fetch_pointer_offset(argument_pointer));
}
#pragma CHECKED_SCOPE pop
// Driver code
 int main(void)
_Checked {
    	return 0;
}

