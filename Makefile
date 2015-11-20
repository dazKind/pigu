CFLAGS+=-O3 -march=armv7 -mfpu=vfp -mfloat-abi=hard -Wall -Wextra
LDFLAGS+=-lGLESv2 -lEGL
INCLUDES+=-Iinclude
SRC=src/state.c src/graphics.c src/input.c src/pigu.c src/time.c
OBJ=${SRC:.c=.o}

all: lib

lib: $(OBJ)
	ar rs lib/libpigu.a src/*.o

$(OBJ): %.o: %.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	-rm src/*.o lib/*.a
