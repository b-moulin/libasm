NAME = libasm.a

SRC =	ft_strlen.s \
		ft_strdup.s \
		ft_strcmp.s \
		ft_read.s \
		ft_write.s \
		ft_strcpy.s


OBJ = ${SRC:.s=.o}

CC  = nasm

RM  = rm -f

CFLAGS = -fmacho64

all:		$(NAME)

%.o: %.s
	$(CC) $(CFLAGS) $< -o $@

$(NAME): $(OBJ)
	ar rcs $(NAME) $?

clean:
	$(RM) $(OBJ)

fclean:	clean
	$(RM) $(NAME)

re:		fclean all