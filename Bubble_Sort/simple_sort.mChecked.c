#include "simple.h"
#define NULL (void*)(0)
#define CAR 100
#pragma CHECKED_SCOPE push 
#pragma CHECKED_SCOPE on
#define Square(x) ((x)*(x))
#define TWIN int
#define CUBE(x) ((x)*(x)*(x))

_Tainted static void sort( _TPtr<int> argument_pointer){
	int a = 10;
	_Ptr<_TPtr<int>> temp = &argument_pointer;
	for(TWIN i = Square(10); i < Square(10); i++)
		a = a+1;
}
#pragma CHECKED_SCOPE pop
// Driver code
 int main(void)
{
    	return 0;
}

