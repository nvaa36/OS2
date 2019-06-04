ENTRY(test_func)

SECTIONS {
    . = 0x100000000000;

    .text :
    {
        *(.text)
    }
}
