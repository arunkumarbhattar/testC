#pragma TAINTED_SCOPE push
#pragma TAINTED_SCOPE on

_Mirror _TPtr<int> outside;
_Tainted int i = 10;

_TPtr<int> sort(_TPtr<int> argument_pointer)
{
	return argument_pointer;
}
_TPtr<int> tainted_sort(_TNt_array_ptr<char> temp){
	return (_TPtr<int>)temp;
	int k = 10;
	k = k + i; 
}
#pragma TAINTED_SCOPE pop

// Driver code
 int main(void)
{
    return 0;
}

