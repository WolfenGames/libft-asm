#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <memory.h>
#include <string.h>
#include "libftasm.h"

int     main(void)
{
	//char *a = strdup("Hello World");
	char *a = strdup("hey man");
	char *b = ft_strdup(a);
	printf("%s : %s\n", a, b);
	a[0] = 'z';
	b[1] = 'z';
	printf("%s : %s\n", a, b);

    return 0;
}
