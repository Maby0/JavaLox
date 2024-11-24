# Crafting Interpreters: Tree-Walk Interpreter Progress

This project follows the journey of building a tree-walk interpreter as described in **Robert Nystrom's "Crafting Interpreters"**. The focus is on implementing a small programming language called **Lox** using Java, learning foundational concepts in interpreters and compilers.

## Concepts Covered 
_(as of reaching chapter [9] - 10/11/24)_

### 1. The Language: Lox
- **Lox** is a dynamically-typed, high-level language designed to teach interpreter implementation.
- Features implemented so far include:
  - Arithmetic and logical expressions
  - Variable declarations and scoping
  - Control flow (if-statements, loops)

### 2. Lexer (Scanning)
- Transforms raw source code into a sequence of **tokens** (e.g., keywords, operators, identifiers, literals).
- Key topics:
  - Token types (e.g., `NUMBER`, `STRING`, `IDENTIFIER`, `EQUAL`)
  - Regular expressions and character-by-character scanning
  - Error handling during tokenization

### 3. Parser (Syntax Analysis)
- Converts tokens into an **Abstract Syntax Tree (AST)**, representing the program’s structure.
- Introduced:
  - Recursive descent parsing
  - Grammar rules for expressions, statements, and precedence
  - Error recovery during parsing

### 4. Abstract Syntax Tree (AST)
- Designed classes to represent various language constructs:
  - Expressions (e.g., binary, grouping, literal)
  - Statements (e.g., print, variable declaration)
- Learned about traversing the AST for evaluation.

### 5. Interpreter (Tree-Walk Evaluation)
- Executes the AST directly, visiting each node and performing the corresponding computation.
- Supports:
  - Arithmetic operations (`+`, `-`, `*`, `/`)
  - Logical operations (`==`, `!=`, `<`, `<=`, `>`, `>=`)
  - Variable assignment and retrieval
  - Printing expressions

### 6. Error Handling
- Built mechanisms to handle errors gracefully:
  - Syntax errors during parsing
  - Runtime errors during interpretation
- Focused on clear messaging to the user.

### 7. Environment and Scoping
- Implemented an **environment** to manage variable bindings and scope.
- Supported:
  - Variable declaration (`var x = value;`)
  - Variable reassignment and shadowing
