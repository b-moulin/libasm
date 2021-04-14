#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/errno.h>
#include <stdlib.h>

int ft_strlen(char *str);

char *ft_strcpy(char *dst, char *src);

int ft_write(int fildes, const void *buf, size_t nbyte);

char *ft_strdup(char *str);

ssize_t	ft_read(int fildes, void *buf, size_t nbyte);

int ft_strcmp(const char *, const char *);

int main() {
	char	*str;

	str = malloc(20 + 1);
	str[20] = 0;
	printf("%zd\n", ft_read(-1, str, 20));

	// printf("%d\n", ft_strcmp("Tripouille", "Tripouill"));
    return 0 ;
}