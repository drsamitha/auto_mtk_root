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
TARGETS = \
	$(BIN_DIR)/linux_64 \
	$(BIN_DIR)/linux_32 \
	$(BIN_DIR)/windows_64.exe \
	$(BIN_DIR)/windows_32.exe

# Linux 64-bit target
$(BIN_DIR)/root_linux_64: $(SRC_FILES)
	$(CXX) $(CXXFLAGS) -m64 $^ -o $@

# Linux 32-bit target
$(BIN_DIR)/root_linux_32: $(SRC_FILES)
	$(CXX) $(CXXFLAGS) -m32 $^ -o $@

# Windows 64-bit target
$(BIN_DIR)/root_windows_64.exe: $(SRC_FILES)
	$(CXX) $(CXXFLAGS) -m64 $^ -o $@

# Windows 32-bit target
$(BIN_DIR)/root_windows_32.exe: $(SRC_FILES)
	$(CXX) $(CXXFLAGS) -m32 $^ -o $@


# Phony target to clean objects and executable
.PHONY: clean
clean:
	rm -f $(OBJ_FILES) $(TARGET)
