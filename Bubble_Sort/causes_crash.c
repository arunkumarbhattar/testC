#include <stddef.h>
#include <stdlib.h>

enum json_value_type {
    JSONError   = -1,
    JSONNull    = 1,
    JSONString  = 2,
    JSONNumber  = 3,
    JSONObject  = 4,
    JSONArray   = 5,
    JSONBoolean = 6
};
typedef int JSON_Value_Type;

// Function to sort the numbers using poin
typedef struct json_object_t JSON_Object;
typedef struct json_array_t  JSON_Array;
typedef struct json_value_t  JSON_Value;

/* Tstruct versions*/
typedef Tstruct json_object_t_t TJSON_Object;
typedef Tstruct json_array_t_t  TJSON_Array;
typedef Tstruct json_value_t_t  TJSON_Value;

typedef struct json_value_value {
    char        *string : itype(_Nt_array_ptr<char>);
    double       number;
    JSON_Object *object : itype(_Ptr<JSON_Object>);
    JSON_Array  *array  : itype(_Ptr<JSON_Array>);
    int          boolean;
    int          null;
} JSON_Value_Value;

struct json_value_t {
    JSON_Value      *parent : itype(_Ptr<JSON_Value>);
    JSON_Value_Type  type;
    JSON_Value_Value value;
};

struct json_object_t {
    JSON_Value  *wrapping_value : itype(_Ptr<JSON_Value>);
    char       **names          : itype(_Array_ptr<_Nt_array_ptr<char>>) count(capacity);
    JSON_Value **values         : itype(_Array_ptr<_Ptr<JSON_Value>>)    count(capacity);
    size_t       count;
    size_t       capacity;
};

struct json_array_t {
    JSON_Value  *wrapping_value : itype(_Ptr<JSON_Value>);
    JSON_Value **items          : itype(_Array_ptr<_Ptr<JSON_Value>>) count(capacity);
    size_t       count;
    size_t       capacity;
};

/* Type definitions */
typedef Tstruct json_value_value_t {
    _TNt_array_ptr<char> string;
    double       number;
    _TPtr<TJSON_Object> object;
    _TPtr<TJSON_Array> array;
    int          boolean;
    int          null;
} TJSON_Value_Value;

Tstruct json_value_t_t {
    _TPtr<TJSON_Value> parent;
    JSON_Value_Type  type;
    TJSON_Value_Value value;
};

Tstruct json_object_t_t {
    _TPtr<TJSON_Value> wrapping_value;
    _TArray_ptr<_TNt_array_ptr<char>> names : count(capacity);
    _TArray_ptr<_TPtr<TJSON_Value>> values  : count(capacity);
    size_t       count;
    size_t       capacity;
};

Tstruct json_array_t_t {
    _TPtr<TJSON_Value> wrapping_value;
    _TArray_ptr<_TPtr<TJSON_Value>> items : count(capacity);
    size_t       count;
    size_t       capacity;
};


_Mirror _Ptr<const JSON_Value> sort(_Ptr<const JSON_Value> argument_pointer)
{
	return argument_pointer;
}

_Tainted _TPtr<int> tainted_sort(int a, int b){
	_TPtr<const TJSON_Value> temp = NULL;
	_Ptr<const JSON_Value> twin = sort((_Ptr<const JSON_Value>)temp);
	return (_TPtr<int>)twin;
}
// Driver code
 int main(void)
{
    return 0;
}

