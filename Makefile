# Variables
SRC_DIR = lox/com/craftinginterpreters/lox
TOOL_DIR = lox/com/craftinginterpreters/tool
CLASS_DIR = out
MAIN_CLASS = com.craftinginterpreters.lox.Lox

# Find all .java files
JAVA_FILES := $(shell find $(SRC_DIR) $(TOOL_DIR) -name "*.java")

# Targets
.PHONY: all clean compile run lox

all: compile

compile:
	@mkdir -p $(CLASS_DIR)
	javac -d $(CLASS_DIR) $(JAVA_FILES)

run: compile
	java -cp $(CLASS_DIR) $(MAIN_CLASS)

lox: compile
	java -cp $(CLASS_DIR) $(MAIN_CLASS) $(ARGS)

clean:
	rm -rf $(CLASS_DIR)

# Usage
# To compile and run the program:
# make run
# To compile and run with arguments:
# make lox ARGS="your arguments here"
