#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/errno.h>

// extern int ft_strlen(char *str);

// int ft_strlen(const char *str);

// int ft_write(int fildes, const void *buf, size_t nbyte);

// ssize_t	read(int fildes, void *buf, size_t nbyte);

int main() {
    
	// start(1, "BOB\n", 3);
	int k = ft_strlen("Bonjour");
	printf("%d\n", k);
    return 0 ;
}