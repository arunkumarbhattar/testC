//#include <stdio.h>
//#include <stdlib.h>
/* 
int max(int a, int b) _Checked { return (a > b)? a : b; }
// Returns the maximum value that can be put in a knapsack of capacity W
int knapsack(int W, _Array_ptr<int> wt : count(n), _Array_ptr<int> val : count(n), int n)
_Checked {
   int i, w;
   _Array_ptr<int> K : count((n+1)*(W+1)) = malloc<int>((n+1)*(W+1)*sizeof(int));
 
   // Build table K[][] in bottom up manner
   for (i = 0; i <= n; i++)
   {
       for (w = 0; w <= W; w++)
       {
           if (i==0 || w==0)
               K[i*W+w] = 0;
           else if (wt[i-1] <= w)
                 K[i*W+w] = max(val[i-1] + K[(i-1)*W+(w-wt[i-1])],  K[(i-1)*W+w]);
           else
                 K[i*W+w] = K[(i-1)*W+w];
       }
   }
 
   return K[n*W+W];
}
 */
//extern void f2(_TPtr<int> a _Checked[5], int y) {
//}

int main()
{
//	int r _Checked[10] = {0,1,2,3,4,5,6,7,8,9};
 //	int q[10] = {0,1,2,3,4,5,6,7,8,9}; 
	//int *m = NULL;
   //    	int g = 10;
//	_TArray_ptr<int> q1 : count(2) = NULL;
	//_TArray_ptr<int> s : count(3) = _Tainted_Dynamic_bounds_cast<_TArray_ptr<int>>(q1, count(5));
  //  	_Array_ptr<int> sp : count(3) = _Dynamic_bounds_cast<_Array_ptr<int>>(r, count(5));
_Itype_for_any(T) void *malloc(unsigned long size) : itype(_TArray_ptr<T>) byte_count(size);
_Itype_for_any(T) void *malloc(unsigned long size) : itype(_Array_ptr<T>) byte_count(size);
//struct Vector{
	//int data _Unchecked[5];
	//	int *len;
    //};
//int* temp [10]; 	
	    //int s4 = sizeof(_TPtr<_TPtr<_TPtr<_TPtr<int>>>>_Checked[5]);
	   // _TPtr<_TPtr<int> _Nt_checked[5]> ptr_to_nullterm_array_of_array_ptrs;
	    //_TPtr<int _Checked[5]> ptr_to_array = NULL;
	    //_Ptr<int>* tmp;
	    //_TPtr<int> q = 0;
	    //_TArray_ptr<int> qqt : count(10)= NULL;
	   // _Array_ptr<int> qq :count(10) = NULL;
	    //_TNt_array_ptr<int> qqq : count(10) = NULL;
	    //qqt = qq;
	    //qq = qqt;
	   // _TPtr<int> q = 0;
    	    //_TArray_ptr<int> r : count(10) = NULL;
  	   //_TArray_ptr<int> s : count(5) = r;

  	    //q = _Tainted_Dynamic_bounds_cast<_TPtr<int>>(r);
	    
	    //int x = 0;
	    //int arr _Checked[5];
    	    //_Ptr<int> arr_tmp = NULL; 
	    //_TPtr<int> px = (_TPtr<int>) &x;
            //_TPtr<int> pax = NULL;
	   // pax = arr_tmp;
	   //_TPtr<int> pi = NULL; //expected-error {{initializing '_TPtr<int>' with an expression of incompatible type 'int *'}}
 	   //_TPtr<void> pv = pi;
	   //_TPtr<void> p1 = _Tainted_Dynamic_bounds_cast<_TPtr<void>>(pi);
	   //_TPtr<_TPtr<int> (int x, int y)> pfunc = (_TPtr<_TPtr<int> (int x, int y)>)pi ;

	   //pax = arr; // expected-error {{Tainted Pointers cannot point to Checked pointers}}

	    //_TPtr<_TPtr<int>> ptr_to_nullterm_array_of_array_ptrs;
	    //    _TPtr<int _Checked[5]> ptr_to_array_of_unchecked_ptrs = NULL;
//   _TPtr<int *_Checked[5]> ptr_to_array_of_unchecked_ptrs;
//_TPtr<_TPtr<int> _Checked[5]> ptr_to_array_of_ptrs = NULL;
//_TPtr<_TArray_ptr<int> _Checked[5]> ptr_to_array_of_array_ptrs=NULL;
//_TPtr<_TArray_ptr<int> _Nt_checked[5]> ptr_to_nullterm_array_of_array_ptrs=NULL;
//_TPtr<_TNt_array_ptr<int> _Nt_checked[5]> ptr_to_nullterm_array_of_nullterm_array_ptrs=NULL;
    //_Ptr<int> tmp3 _Checked[10] = {0};
   // _Ptr<int> tmp5 _Ptr<int>= {0}; --> compilation error 
    //}
   //
    //_Array_ptr<int _Unchecked[]> tmp = NULL; --> Compilation errors 

    //_Array_ptr<int*>* tmp = NULL;
    //_TArray_ptr<int*> tmp2 = NULL;
    /*_Checked {
    int val _Checked[] = {60, 100, 120};
    int wt _Checked[] = {10, 20, 30};
    int  W = 50;
    int n = sizeof(val)/sizeof(val[0]);
    _Unchecked { printf("\nValue = %d", knapsack(W, wt, val, n)); };
*/

    return 0;
}
