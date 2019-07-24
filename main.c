#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <memory.h>
#include <string.h>
#include <fcntl.h>
#include "libftasm.h"

void	ft_cat(const int fd);

int     main(void)
{
	const int	fd = open("Makefile", O_RDONLY);

	ft_cat((const int)fd);

    return 0;
}
