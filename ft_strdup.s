; nasm ft_strcpy.s -o ft_strcpy.o -fmacho64 && gcc main.c ft_strcpy.o && ./a.out

extern _ft_strcpy
extern _ft_strlen
extern _malloc


global _ft_strdup

_ft_strdup:
			push rdi
			call _ft_strlen
			inc rax
			mov rdi, rax
			call _malloc
			mov rdi, rax
			pop rsi
			call _ft_strcpy
			ret