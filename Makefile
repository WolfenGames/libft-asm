NAME=libftasm.a


SRCDIR=src

OBJDIR=obj

OS = $(shell uname -s)

FILES= ft_bzero.s ft_memset.s ft_isalpha.s ft_isdigit.s ft_isalnum.s\
		ft_isascii.s ft_isprint.s ft_toupper.s ft_tolower.s ft_puts.s \
		ft_strlen.s ft_memcpy.s ft_strdup.s ft_cat.s ft_putchar_fd.s \
		ft_putchar.s ft_putstr.s ft_putstr_fd.s ft_clamp.s

OBJ = $(patsubst %.s, $(OBJDIR)/%.o, $(FILES))
SRC = $(patsubst %, $(SRCDIR)/%, $(FILES))

all: $(NAME)

NASM =

ifeq ($(OS), Darwin)
	NASM += ~/.brew/Cellar/nasm/2.14.02/bin/nasm -f macho64
endif
ifeq ($(OS), Linux)
	NASM += nasm -f elf64
endif

$(NAME): $(OBJDIR) $(OBJ)
	@echo "\x1b[32mLinking\x1b[0m\t\t$(NAME)\x1b[0m"
	@ar -rsc $(NAME) $(OBJ)
	@ranlib $(NAME)

$(OBJDIR)/%.o: $(SRCDIR)/%.s
	@echo "\x1b[34mCompiling\x1b[0m\t$@\x1b[0m"
	@$(NASM) $< -o $@


$(OBJDIR):
	@mkdir -p $(OBJDIR)

test: $(NAME) main.c
	@echo "\x1b[33mLinking\x1b[0m\t\ttest"
	clang -Wall -Werror -Wextra -pedantic -O3 main.c -I./includes -L. $(NAME) -o test

clean:
	@rm -rf $(OBJDIR)

fclean: clean
	@rm -rf $(NAME)
	@rm -rf test

re: clean fclean all

.PHONY: re clean fclean all
