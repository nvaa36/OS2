#ifndef TSS_H
#define TSS_H

#include <stdint.h>

/* TODO: how big should this be? */
#define STACK_SIZE 1028

#define TSS_SIZE 68
#define NUM_ISTS 7

#define GP_IND 1
#define DF_IND 2
#define PF_IND 3
#define KEXIT_IND 4

#define GP_AR_IND GP_IND - 1
#define DF_AR_IND DF_IND - 1
#define PF_AR_IND PF_IND - 1
#define KEXIT_AR_IND KEXIT_IND - 1

struct TSS {
   uint32_t res1; 

   uint64_t rsp0;
   uint64_t rsp1;
   uint64_t rsp2;

   uint64_t res2;

   uint64_t ist[NUM_ISTS];

   uint64_t res3;

   uint16_t res4;
   uint16_t iomap;

} __attribute__ ((packed));

char gp_stack[STACK_SIZE];
char df_stack[STACK_SIZE];
char pf_stack[STACK_SIZE];
char kexit_stack[STACK_SIZE];

struct TSS tss;

void setup_tss();

#endif
