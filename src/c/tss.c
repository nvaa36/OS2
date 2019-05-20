#include "tss.h"

#include "kmalloc.h"

void setup_tss() {
   tss.ist[GP_AR_IND] = (uint64_t)&(gp_stack[STACK_SIZE]);
   tss.ist[DF_AR_IND] = (uint64_t)&(df_stack[STACK_SIZE]);
   tss.ist[PF_AR_IND] = (uint64_t)&(pf_stack[STACK_SIZE]);
   tss.ist[KEXIT_AR_IND] = (uint64_t)&(kexit_stack[STACK_SIZE]);
}
