# Makefile

# Compiler
CXX = g++

# Source directory
SRC_DIR = src

# Output directory
BIN_DIR = bin

# Source files
SRC_FILES = $(wildcard $(SRC_DIR)/*.cpp)

# Object files
OBJ_FILES = $(patsubst $(SRC_DIR)/%.cpp,$(BIN_DIR)/%.o,$(SRC_FILES))

# Compiler flags
CXXFLAGS = -std=c++11 -Wall -Wextra

# Linker flags
LDFLAGS =

# Target executable
TARGET = $(BIN_DIR)/root

# Rule to compile object files
$(BIN_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Rule to link object files into executable
$(TARGET): $(OBJ_FILES)
	$(CXX) $(LDFLAGS) $^ -o $@

# Phony target to clean objects and executable
.PHONY: clean
clean:
	rm -f $(OBJ_FILES) $(TARGET)
