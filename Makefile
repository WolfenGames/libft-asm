NAME=libftasm.a


SRCDIR=src

OBJDIR=obj

FILES=ft_bzero.s ft_memset.s ft_isalpha.s

OBJ = $(patsubst %.s, $(OBJDIR)/%.o, $(FILES))
SRC = $(patsubst %, $(SRCDIR)/%, $(FILES))

all: $(OBJDIR) $(NAME)

$(NAME): $(OBJ)
	@echo "\x1b[32mLinking\x1b[0m\t\t$(NAME)\x1b[0m"
	@ar -rsc $(NAME) $(OBJ)
	@ranlib $(NAME)

$(OBJDIR)/%.o: $(SRCDIR)/%.s
	@echo "\x1b[34mCompiling\x1b[0m\t$@\x1b[0m"
	@~/.brew/Cellar/nasm/2.14.02/bin/nasm -f macho64 -g $< -o $@

$(OBJDIR):
	@mkdir -p $(OBJDIR)

test: $(NAME) main.c
	@echo "\x1b[33mLinking\x1b[0m\t\ttest"
	@clang -Wall -Werror -Wextra -pedantic -O3 main.c $(NAME) -o test

clean:
	@rm -rf $(OBJDIR)

fclean: clean
	@rm -rf $(NAME)
	@rm -rf test

re: clean fclean all

.PHONY: re clean fclean all
