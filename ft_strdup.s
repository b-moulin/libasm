; nasm ft_strcpy.s -o ft_strcpy.o -fmacho64 && gcc main.c ft_strcpy.o && ./a.out
global _ft_strdup

_ft_strdup:
	mov rcx, 0
	loop:
			cmp byte [rsi+rcx], 0
			je end
			mov al, [rsi+rcx]
			mov [rdi+rcx], al
			inc rcx
			jmp loop
	end:
			mov al, [rsi+rcx]
			mov [rdi+rcx], al
			mov rax, rdi
			ret