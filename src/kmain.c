#include "kmain.h"

void keyboard_io(void *arg) {
   while (1)
      putc(getc());
}

void print_stuff(void *arg) {
   int i;

   while (1) {
      for (i = 0; i < 500000; i++);
      printk("-");
      yield();
   }
}

void setup_thread(void *arg) {
   block_dev *dev = setup_block_devices();
   struct super_block *sb = setup_filesystem(dev);
   sb->root_inode->readdir(sb->root_inode, readdir_cb_test, NULL);
   load_test_func(sb);
}

int kmain(uint32_t *tag_pointer) {
   int __loop = 1;
   while (__loop);
   setup_kernel(tag_pointer);
   printk("djs\nkhfaksdjhfkjhfoweihafoiehfioehfoiwehoifhweoifhweoifhweoifhoiwehfoiwehfiwehfoiehfoiehwfoiheofihweoifhweoifhaoeiwhfoiewhfoiewhfoiewhfoiewhfoiaewhfoiwehafioewh\n");
   PROC_create_kthread(setup_thread, NULL);
   while (1) {
      //printk("REady to run!\n");
      PROC_run();
      wait_for_interrupt();
   }
}

void setup_kernel(uint32_t *tag_pointer) {
   setup_tss();
   setup_gdt();
   setup_interrupts();
   setup_frame_alloc(tag_pointer);
   setup_kernel_page_tables();
   setup_kmalloc();
   SER_init();
   setup_keyboard();
   setup_kb_state();
   setup_syscalls();
   setup_multiprocessing();
}
