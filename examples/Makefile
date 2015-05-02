
CFLAGS+=-O3 -march=armv6 -mfpu=vfp -mfloat-abi=hard -Wall -Wextra
LDFLAGS+=-lGLESv2 -lpigu -lEGL -lbcm_host -lrt
INCLUDES+=-I../include -I/opt/vc/include
LIBS+=-L../lib -L/opt/vc/lib
SRC=cube.cpp
OBJ=${SRC:.cpp=.bin}

$(OBJ): %.bin: %.cpp
	$(CXX) $< -o $@ $(CFLAGS) $(INCLUDES) $(LIBS) $(LDFLAGS)

clean:
	-rm *.bin
