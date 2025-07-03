CXX = clang++
CXXFLAGS = -std=c++17 -Wall -Wextra -Ilib/Frontend -Ilib/Backend -g

SRC = \
    lib/Frontend/Parser.cpp \
    Tests/test.cpp

OBJ = $(SRC:%.cpp=build/%.o)

TARGET = tensoriumc

all: $(TARGET)

build/%.o: %.cpp
	@mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^

clean:
	rm -rf build
	rm -f $(TARGET)

.PHONY: all clean
