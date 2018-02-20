# C-and-Assembly

## Member
- Wongsathorn Panichkurkul 591054817
- Wasuthun Wanaphongthipakorn 5910545841

## How to run

1. cd src/
2. Use nasm to compile your sum_array.asm to object file.
> nasm -f elf64 -o sum_array.o sum_array.asm
3. Use gcc to compile your main_array.c to object file.
> gcc -c main_array.c
4. Use gcc to link both.
> gcc -o main_array main_array.o sum_array.o
5. Run
> ./main_array
