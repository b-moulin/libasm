; nasm ft_strcmp.s -o ft_strcmp.o -fmacho64 && gcc main.c ft_strcmp.o && ./a.out
global _ft_strcmp

_ft_strcmp:
		mov rcx, 0
		loop:
			movzx r8, byte [rdi+rcx]
			cmp r8, 0
			je end
			movzx r9, byte [rsi+rcx]
			cmp r8, r9
			jne ko
			inc rcx
			jmp loop
		end:
			movzx r9, byte [rsi+rcx]
			cmp r9, 0
			je ok
			jmp ko
		ko:
			mov rax, 0
			add rax, r8
			sub rax, r9
			ret
		ok:
			mov rax, 0
			ret
