; nasm ft_write.s -o ft_write.o -fmacho64 && gcc main.c ft_write.o && ./a.out
extern ___error

global _ft_write

_ft_write:
		mov rax, 0x2000004
		syscall
		jc error
		ret

error:
		push rax
		call ___error
		pop	qword[rax]
		mov rax, -1
		ret