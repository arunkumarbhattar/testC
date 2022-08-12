#include <stdlib.h>
_Tainted Tstruct arun{
_TPtr<int> a;
int b;
int arun1;

};

enum json_value_type {
    JSONError   = -1,
    JSONNull    = 1,
    JSONString  = 2,
    JSONNumber  = 3,
    JSONObject  = 4,
    JSONArray   = 5,
    JSONBoolean = 6
};

_Tainted _TPtr<int> sample_tainted(_TPtr<int> a);

_TPtr<int> sample_tainted(_TPtr<int> a)
{
        enum json_value_type json;
        json = JSONArray;

        return a;

}

#pragma TAINTED_SCOPE push
#pragma TAINTED_SCOPE on

_Mirror _TPtr<int> outside;
_Mirror const int i = 10;
/*
 * Simple function pointer 
 */ 

_Callback _TPtr<int> twin_turbo (_TNt_array_ptr<char> ip_string, _TPtr<int> arg2);

_Tainted _TPtr<int> sample_tainted(_TPtr<int> a);

_TPtr<int> sort(_TPtr<int> argument_pointer, _TPtr<_TPtr<int>(_TNt_array_ptr<char>, _TPtr<int>)> twin)
{
	return argument_pointer;
}
_TPtr<int> tainted_sort(_TNt_array_ptr<char> temp){
	return (_TPtr<int>)temp;
}

#pragma TAINTED_SCOPE pop
// Driver code
 int main(void)
{ 
    _TPtr<int> simple_arg = NULL;
    sort(simple_arg, &twin_turbo);
    return 0;
}

