# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alabdull <@student.42abudhabi.ae>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/20 18:03:46 by alabdull          #+#    #+#              #
#    Updated: 2023/05/17 01:29:21 by alabdull         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fractol

SRC =	julia.c utils.c utils1.c melbrot.c fractol.c atod.c burning_ship.c\

OBJ = $(SRC:.c=.o)

CC = gcc

CFLAGS =  -Wall -Werror -Wextra -g3 -fsanitize=address -O3

MLX = libmlx.dylib

LIB = Libft/libft.a

PRINTF = Libft/ft_printf/libftprintf.a

GNL = ./Libft/get_next_line/getnextline.a

%.o: %.c
	@$(CC) $(CFLAGS) -Imlx -c $< -o $@

all: $(NAME)

$(NAME): $(MLX) $(OBJ)
	@make -sC ./Libft
	@$(CC) $(CFLAGS) $(OBJ) $(LIB) $(PRINTF) $(GNL) -Lmlx -lmlx -framework OpenGL -framework AppKit -o $(NAME)

$(MLX):
	@make -sC ./mlx

clean:
	@rm -f $(OBJ)
	@rm -f $(MLX)
	@make clean -sC ./mlx
	@make clean -sC ./Libft

fclean: clean
	@rm -f $(NAME)
	@make fclean -sC ./Libft

re: fclean all

.PHONY: all clean fclean re
