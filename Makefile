# Compiler
CXX = g++

# Compiler flags
CXXFLAGS = -std=c++11 -Wall -I./include # Using C++11 for compatibility with older hardware/systems

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
