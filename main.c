#include "fcntl.h"
#include "unistd.h"
#include "libftasm.h"

int main(int ac, const char **av) {
	ft_putchar('\n');
	ft_putchar('\n');
	ft_putchar('\n');
	ft_cat(0);
	ft_cat(open("Makefile", O_RDONLY));
	ft_cat(open(av[0], O_RDONLY));
	ft_cat(-42);
	(void)ac;
	(void)av;
	return (0);
}
