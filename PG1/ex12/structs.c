#include <stdio.h>
#include "structs.h"

void print_person(Person *person);

void main(void)
{
    // PersonNode list = {, &(PersonNode){&(Person){"Joshua", "Hamilton", 22, NULL}, NULL}};

    Person p1 = (Person){"Wolfgang", "Buchner", 26, (Adress){"Stein 59", 92536}};
    Person p2 = (Person){"Joshua", "Hamilton", 22, (Adress){"", 0}};

    PersonNode *list = CreatePersonNode(p1, CreatePersonNode(p2, NULL));

    PersonNode *current_iter = list;

    while (current_iter)
    {
        print_person(current_iter->person);
        current_iter = current_iter->next;
    }
}

void print_person(Person *person)
{
    printf("Name: %s %s\n", person->forname, person->surname);
    printf("Street: %s\n", person->adress.street);
    printf("\n\n");
}