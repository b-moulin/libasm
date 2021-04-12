#include <stdio.h>

// extern int ft_strlen(char *str);

extern char *ft_strcpy(char *dst, char *src);

int main() {
    
	// int c;
	char src[4] = {'B','O','N',0};
	char dst[4] = {'B','I','N',0};

	printf("%s %s\n", src, dst);

	ft_strcpy(dst, src);
	// c = ft_strlen("BOAB");
	// printf("c = %d\n", c);

	printf("%s %s\n", src, dst);

    return 0 ;
}