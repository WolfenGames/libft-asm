/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libftasm.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jwolf <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/07/30 14:40:36 by jwolf             #+#    #+#             */
/*   Updated: 2018/07/30 14:40:37 by jwolf            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTASM_H
# define LIBFTASM_H

void	ft_bzero(void *somemen, size_t size);
void	*ft_memset(void *somemen, char val, size_t size);
void	*ft_memcpy(void *dst, const void *src, size_t size);
int		ft_isalpha(char c);
int		ft_isdigit(int i);
int		ft_isalnum(char c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_toupper(int c);
int		ft_tolower(int c);
void	ft_puts(char *s);
size_t	ft_strlen(char *s);
char	*ft_strdup(char *s);
void	ft_cat(const int fd);
void	ft_putchar_fd(char c, int fd);
void	ft_putchar(char c);
void	ft_putstr_fd(char *str, int fd);
void	ft_putstr(char *str);
int		ft_clamp(int min, int max, int val);

#endif
