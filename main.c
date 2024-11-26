#include <stdio.h>
#include "math.h" // Include your custom header file

int main(void) {
    int a = add(10, 5);
    printf("Add: %d\n", a);

    int b = minus(10, 5);
    printf("Minus: %d\n", b);

    long int c = multi(10.5, 5.5);
    printf("Multiply: %ld\n", c);

    short d = division(102,2);
    printf("Division: %d\n", d);


    return 0;
}
