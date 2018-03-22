#include<stdlib.h>
#include<string.h>

#define MAX_NAME_LENGTH 255
#define MAX_STREET_LENGTH 255

typedef struct Adress {
    char street[MAX_STREET_LENGTH];
    int plz;
} Adress;


typedef struct Person {
    char forname[MAX_NAME_LENGTH];
    char surname[MAX_NAME_LENGTH];
    int age;
    struct Adress adress;
} Person;


typedef struct PersonNode {
    struct Person * person;
    struct PersonNode * next;
} PersonNode;

PersonNode * CreatePersonNode(Person person, PersonNode * next) {
    // return &(PersonNode) {person, next};

    PersonNode * node_ptr = malloc(sizeof(PersonNode));

    if (!node_ptr) {
        return NULL;
    }

    Person * person_ptr = malloc(sizeof(Person));
    memcpy(person_ptr, &person, sizeof(Person));


    node_ptr->person = person_ptr;
    node_ptr->next = next;

    return node_ptr;
}