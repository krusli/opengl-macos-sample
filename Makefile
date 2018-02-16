# OBJS specifies which files to compile as part of the project
OBJS = main.cpp

# CC specifies which compiler we're using
CC = g++

# INCLUDE_PATHS specifies the additional include paths we'll need
# INCLUDE_PATHS = -I/usr/local/include -I/opt/X11/include
INCLUDE_PATHS = -I/usr/local/Cellar/glfw/3.2.1/include -I/usr/local/Cellar/glew/2.1.0/include

# LIBRARY_PATHS specifies the additional library paths we'll need
# LIBRARY_PATHS = -L/usr/local/lib -L/opt/X11/lib
LIBRARY_PATHS = -L/usr/local/Cellar/glfw/3.2.1/lib -L/usr/local/Cellar/glew/2.1.0/lib

# COMPILER_FLAGS specifies the additional compilation options we're using
# -w suppresses all warnings
COMPILER_FLAGS = -Wall

# LINKER_FLAGS specifies the libraries we're linking against
# Cocoa, IOKit, and CoreVideo are needed for static GLFW3.
LINKER_FLAGS = -framework OpenGL -lglfw -lglew

# OBJ_NAME specifies the name of our exectuable
OBJ_NAME = main

#This is the target that compiles our executable
all: $(OBJS)
	$(CC) $(OBJS) $(INCLUDE_PATHS) $(LIBRARY_PATHS) $(COMPILER_FLAGS) $(LINKER_FLAGS) -o $(OBJ_NAME)
