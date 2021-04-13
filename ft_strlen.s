; nasm ft_strlen.s -o ft_strlen.o -fmacho64 && gcc main.c ft_strlen.o && ./a.out

global _ft_strlen
_ft_strlen:
	mov rcx, 0
	loop:
			cmp byte [rdi+rcx], 0
			je end
			inc rcx
			jmp loop
	end:
			mov rax, rcx
			ret