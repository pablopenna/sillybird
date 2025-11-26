# Compiler
CXX = g++

# Compiler flags
## Using C++17 for compatibility with older hardware/systems.
## Crow requires at least C++17
## pthread required by crow
CXXFLAGS = -std=c++17 -Wall -I./include -lpthread

# Output binary name
TARGET = build/main

# Source and object files
SRCS = $(wildcard src/*.cpp)
OBJS = $(SRCS:src/%.cpp=build/%.o)

# Build target
$(TARGET): $(OBJS)
	$(CXX) $(OBJS) -o $(TARGET)

# Compile .cpp to .o
build/%.o: src/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean up generated files
clean:
	rm -f build/*.o $(TARGET)
