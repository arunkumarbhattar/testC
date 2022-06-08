#include <stdio.h>
#include <stdlib.h>
#define MAX 10

//method to input elements in the array
void inputElement(int m _Checked[MAX] _Checked[MAX], _TPtr<int> r, _TPtr<int> c) {
    for(int i=0; i<*r ; i++){
        for(int j=0; j<*c; j++){
            _Unchecked { printf("Enter element into row %d & column %d \n",i+1,j+1); };
            _Unchecked { scanf("%d",&m[i][j]); };
        }
    }
}
 
//maethod to display matrix
void display(int m _Checked[MAX] _Checked[MAX], _TPtr<int> r, _TPtr<int> c) {
    for(int i=0; i<*r; i++){
        for(int j=0; j<*c; j++)_Unchecked {
            printf("%d \t",m[i][j]);
        }
        _Unchecked { printf("\n"); };
    }
}
 
int main(void)
 {
    //order of the two matrix
    //_Ptr<int> r1c = (_Ptr<int>)malloc<int>(sizeof(int));
    _TPtr<int> r1 = (_TPtr<int>)malloc<int>(sizeof(int));
    _TPtr<int> r2 = (_TPtr<int>)malloc<int>(sizeof(int));
    _TPtr<int> c1 = (_TPtr<int>)malloc<int>(sizeof(int));
    _TPtr<int> c2 = (_TPtr<int>)malloc<int>(sizeof(int));
    _Nt_array_ptr<int> cr1 : count(10) = NULL;
    _Array_ptr<int> tr1 : count(4) = (int _Checked[4]){0, 1, 2};
    _Array_ptr<int> tr2 : count(2) = tr1;


    //an argument-less printf statement need not be marked as unchecked 
    { printf("Enter order for Matrix I as: rows columns\n"); };
    _Unchecked { scanf("%d", r1); };
    _Unchecked { scanf("%d", c1); };
 
    _Unchecked { printf("Enter order for Matrix II as: rows columns\n"); };
    _Unchecked { scanf("%d", r2); };
    _Unchecked { scanf("%d", c2); };
 
    //Checking whether multiplication is possible or not
    //If not possible then stop execution by return
    if(*c1 != *r2){
        { printf("Multiplication not possible with available matrix order \n"); };
        return 0;
    }
    
    //If order validates multiplication then proceed
    //Declare matrices
    int matrix1 _Checked[MAX] _Checked[MAX];
    int matrix2 _Checked[MAX] _Checked[MAX];
 
    //Take input in the both the matrices
    _Unchecked { printf("Enter %d elements into Matrix I \n",(*r1) * (*c1)); };
    inputElement(matrix1, r1, c1);
    _Unchecked { printf("Enter %d elements into Matrix II \n",(*r2) * (*c2)); };
    inputElement(matrix2, r2, c2);
 
    //Declare resultant matrix
    int res _Checked[MAX] _Checked[MAX] ; 
    
    //Multiplying matrices
    for(int i=0; i<*r1 ; i++){
        for(int j=0; j<*c2; j++){
            int sum =0;
            for(int k=0; k<*r2; k++){
                sum += (matrix1[i][k] * matrix2[k][j]);
            }
            res[i][j] = sum;
        }
    }
 
    _Unchecked { printf("--------Matrix I------------ \n"); };
    display(matrix1, r1, c1);
 
    _Unchecked { printf("--------Matrix II------------ \n"); };
    display(matrix2, r2, c2);
 
    _Unchecked { printf("--------Resultant Matrix------------\n"); };
    display(res, r1, c2);
    
    return 0;
}
