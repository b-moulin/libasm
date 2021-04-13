; nasm ft_strcpy.s -o ft_strcpy.o -fmacho64 && gcc main.c ft_strcpy.o && ./a.out

extern _ft_strcpy
extern _ft_strlen
extern malloc


global _ft_strdup

_ft_strdup:
			mv r8, rdi
			call _ft_strlen
			call malloc
			mv rsi, r8
			call _ft_strcpy
			ret