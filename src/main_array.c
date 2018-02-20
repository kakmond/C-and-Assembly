#include <stdio.h>



/* 
 *
 *  *  * declaring add as extern tells the compiler that the definition
 *
 *   *   * can be found in a seperate module 
 *
 *    *    */ 

extern int  add(int a[], int n);



#define N 10



int main() {

        int array[] = {1,2,3,4,5,6,7,8,9,10};

int ret = add(array,10);

printf("add returned %d\n", ret);

return 0;

}
