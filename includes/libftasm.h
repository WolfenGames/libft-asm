#ifndef LIBFTASM_H
# define LIBFTASM_H


void    ft_bzero(void *somemen, size_t size);
void    *ft_memset(void *somemen, char val, size_t size);
void	*ft_memcpy(void *dst, const void *src, size_t size);
int     ft_isalpha(char c);
int		ft_isdigit(int i);
int		ft_isalnum(char c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_toupper(int c);
int		ft_tolower(int c);
void	ft_puts(char *s);
size_t	ft_strlen(char *s);
char	*ft_strdup(char *s);
size_t	ft_cat(const int fd);

#endif
