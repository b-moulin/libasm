; nasm ft_read.s -o ft_read.o -fmacho64 && gcc main.c ft_read.o && ./a.out
; nasm ft_read.s -o ft_read.o -fmacho64 && gcc test_read.c ft_read.o && ./a.out
extern ___error

global _ft_read

_ft_read:
		mov rax, 0x2000003
		syscall
		jc error
		ret
error:
		push rax
		call ___error
		pop qword[rax]
		ret