#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <memory.h>
#include <string.h>
#include "libftasm.h"

int     main(void)
{
	char *a = strdup("Hello World");
	printf("Start\n");
	puts(a);
	ft_puts(a);
	printf("End\n");

    return 0;
}
