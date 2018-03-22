#include <stdio.h>

struct test {
    char name[10];
};

void main(void)
{
    char name[10];

    name = "test";
    struct test struct_name = { "test" };

    struct_name.name = "Wolfgang";

    // printf("%s", name);
    printf("%s", struct_name.name);
}