_TPtr<int> outside;
_Mirror int i = 10;
_Mirror _Ptr<int> sort(_Ptr<int> argument_pointer)
{
	return argument_pointer;
}

_Tainted _TPtr<int> tainted_sort(_TPtr<int> temp){
	_TPtr<int> tempest = outside;
	_Ptr<int> twin = sort((_Ptr<int>)temp);
	return (_TPtr<int>)twin;
}
// Driver code
 int main(void)
{
    return 0;
}
