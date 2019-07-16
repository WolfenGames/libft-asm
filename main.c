#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <memory.h>
#include <string.h>
#include "libftasm.h"

int     main(void)
{
    for (int i = 0; i < 128; i++)
        printf("%c: %i\n", i, ft_isalpha(i));

    return 0;
}
