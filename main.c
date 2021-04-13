#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/errno.h>
#include <stdlib.h>

// extern int ft_strlen(char *str);

// int ft_strlen(const char *str);

// int ft_write(int fildes, const void *buf, size_t nbyte);

ssize_t	ft_read(int fildes, void *buf, size_t nbyte);

int main() {
	// start(1, "BOB\n", 3);
	char **line;
	get_next_line(line);
	printf("%s\n", *line);
    return 0 ;
}