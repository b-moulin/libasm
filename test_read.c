#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/errno.h>
#include <stdlib.h>

// extern int ft_strlen(char *str);

// int ft_strlen(const char *str);

// int ft_write(int fildes, const void *buf, size_t nbyte);

ssize_t	ft_read(int fildes, void *buf, size_t nbyte);

int	get_next_line(char **line)
{
	int		i;
	int		l;
	int		r;
	char	c;
	char	*tmp;

	r = 0;
	l = 1;
	if (!(*line = malloc(l)))
		return (-1);
	(*line)[0] = 0;
	while ((r = ft_read(0, &c, 1)) && l++ && c != '\n')
	{
		if (!(tmp = malloc(l)))
		{
			free(*line);
			return (-1);
		}
		i = -1;
		while (++i < l - 2)
			tmp[i] = (*line)[i];
		tmp[i] = c;
		tmp[i + 1] = 0;
		free(*line);
		*line = tmp;
	}
	return (r);
}

int main() {
	// start(1, "BOB\n", 3);
	char **line;
	get_next_line(line);
	printf("%s\n", *line);
    return 0 ;
}