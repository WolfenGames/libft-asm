#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <memory.h>
#include <string.h>

void    ft_bzero(void *somemen, size_t size);
void    *ft_memset(void *somemen, char val, size_t size);
int     ft_isalpha(char c);

int     main(void)
{
    for (int i = 0; i < 128; i++)
        printf("%c: %i\n", i, ft_isalpha(i));

    return 0;
}
