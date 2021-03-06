# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: juthomas <juthomas@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/30 01:39:06 by juthomas          #+#    #+#              #
#    Updated: 2016/04/23 11:25:01 by juthomas         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


.PHONY : all, clean, fclean, re

.SUFFIXES :

NAME = libft.a

SRC =  ./ft_isdigit.c ./ft_isalnum.c ./ft_isascii.c \
./ft_atoi.c ./ft_isalpha.c ./ft_strcat.c ./ft_strcmp.c \
./ft_strcpy.c ./ft_strdup.c ./ft_strlcat.c ./ft_strlen.c ./ft_strncat.c \
./ft_strncmp.c ./ft_strncpy.c ./ft_strnstr.c \
./ft_strstr.c ./ft_isprint.c ./ft_toupper.c ./ft_tolower.c \
./ft_strchr.c ./ft_strrchr.c ./ft_bzero.c ./ft_memset.c ./ft_memcpy.c \
./ft_memccpy.c ./ft_memmove.c ./ft_memchr.c ./ft_itoa.c ./ft_lstadd.c \
./ft_lstdel.c ./ft_lstdelone.c ./ft_lstiter.c ./ft_lstmap.c ./ft_lstnew.c \
./ft_memalloc.c ./ft_memdel.c ./ft_putchar.c ./ft_putchar_fd.c ./ft_putendl.c \
./ft_putendl_fd.c ./ft_putnbr.c ./ft_putnbr_fd.c ./ft_putstr.c \
./ft_putstr_fd.c ./ft_strclr.c ./ft_strdel.c ./ft_strequ.c ./ft_striter.c \
./ft_striteri.c ./ft_strjoin.c ./ft_strmap.c ./ft_strmapi.c \
./ft_strnequ.c ./ft_strnew.c ./ft_strsplit.c ./ft_strsub.c ./ft_strtrim.c \
./ft_memcmp.c ./ft_putbit.c ./ft_itoa_base.c ./ft_atoi_base.c \
./ft_putnbr_base.c ./ft_convert_base.c

OBJ = ./ft_isdigit.o ./ft_isalnum.o ./ft_isascii.o\
./ft_atoi.o ./ft_isalpha.o ./ft_strcat.o ./ft_strcmp.o \
./ft_strcpy.o ./ft_strdup.o ./ft_strlcat.o ./ft_strlen.o ./ft_strncat.o \
./ft_strncmp.o ./ft_strncpy.o ./ft_strnstr.o \
./ft_strstr.o ./ft_isprint.o ./ft_toupper.o ./ft_tolower.o \
./ft_strchr.o ./ft_strrchr.o ./ft_bzero.o ./ft_memset.o ./ft_memcpy.o \
./ft_memccpy.o ./ft_memmove.o ./ft_memchr.o ./ft_itoa.o ./ft_lstadd.o \
./ft_lstdel.o ./ft_lstdelone.o ./ft_lstiter.o ./ft_lstmap.o ./ft_lstnew.o \
./ft_memalloc.o ./ft_memdel.o ./ft_putchar.o ./ft_putchar_fd.o ./ft_putendl.o \
./ft_putendl_fd.o ./ft_putnbr.o ./ft_putnbr_fd.o ./ft_putstr.o \
./ft_putstr_fd.o ./ft_strclr.o ./ft_strdel.o ./ft_strequ.o ./ft_striter.o \
./ft_striteri.o ./ft_strjoin.o ./ft_strmap.o ./ft_strmapi.o \
./ft_strnequ.o ./ft_strnew.o ./ft_strsplit.o ./ft_strsub.o ./ft_strtrim.o \
./ft_memcmp.o ./ft_putbit.o ./ft_itoa_base.o ./ft_atoi_base.o \
./ft_putnbr_base.o ./ft_convert_base.o

H = ./

$(NAME):
	gcc -Wall -Werror -Wextra -c $(SRC) -I $(H)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

all : $(NAME)

clean :
	rm -rf $(OBJ)

fclean : clean
	rm -rf $(NAME)

re : fclean all;
