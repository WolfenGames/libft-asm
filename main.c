#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <memory.h>
#include <string.h>
#include <fcntl.h>
#include "libftasm.h"

int     main(void)
{
	for (int i = -5; i < 20; i++)
		printf("%i: %d\n", i, ft_clamp(0, 10, i));
    puts(NULL);
	ft_puts(NULL);
	//ft_putchar_fd('C', -1);
	ft_cat(0);
	return 0;
}
