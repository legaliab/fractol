# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alabdull <@student.42abudhabi.ae>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/25 02:18:26 by alabdull          #+#    #+#              #
#    Updated: 2023/05/06 19:32:20 by alabdull         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC =	ft_printf.c ft_putchar.c ft_putnbr.c ft_putstr.c\
		print_char.c print_str.c print_int.c print_uint.c\
		print_pointer.c print_hex.c\

OBJ = $(SRC:.c=.o)

CC = gcc

NAME = libftprintf.a

CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJ)
	@ar -rcs $(NAME) $(OBJ)

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: clean fclean all re