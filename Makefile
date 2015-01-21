CC=g++

CFLAGS = -std=c++11 -g -O0 #-Wall -Wextra -Werror

DEPS = BallAux.h  Ball.h  BallMath.h  FrameSaver.h  Shapes.h  tga.h  Timer.h Angel/Angel.h Angel/CheckError.h Angel/mat.h Angel/vec.h
OBJ = anim.o   Ball.o BallAux.o BallMath.o  FrameSaver.o  Shapes.o  tga.o  Timer.o Angel/InitShader.o
SLIBS = 
LDFLAGS = 
LDLIBS = -lstdc++ -lGL -lglut -lGLEW

all: anim

%.o: %.c* $(DEPS)
	$(CC) $(CFLAGS) -c -o $@ $< 

anim: $(OBJ) $(SLIBS)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS) $(LDLIBS)

clean:
	rm -f $(OBJ) anim *~ [#]*[#] .\#*