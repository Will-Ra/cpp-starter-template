# My C++ Project

This is a small but professional, standardized, and extensible C++ project template for macOS + VS Code + CMake.

## Getting Started

1.  **Configure CMake:**
    ```bash
    cmake --preset debug
    ```
2.  **Build:**
    ```bash
    cmake --build build/debug
    ```
3.  **Run CLI:**
    ```bash
    ./build/debug/apps/my_project_cli
    ```
4.  **Run Tests:**
    ```bash
    cmake --build build/debug --target my_project_tests
    ./build/debug/tests/my_project_tests
    ```
    Or using CTest:
    ```bash
    ctest --preset debug
    ```

## Project Structure

```txt
my_project/
├─ CMakeLists.txt
├─ CMakePresets.json
├─ cmake/
│  ├─ ProjectOptions.cmake
│  ├─ CompilerWarnings.cmake
│  └─ Sanitizers.cmake
├─ include/
│  └─ my_project/
│     └─ foo.hpp
├─ src/
│  ├─ CMakeLists.txt
│  └─ foo.cpp
├─ apps/
│  ├─ CMakeLists.txt
│  └─ my_project_cli.cpp
├─ tests/
│  ├─ CMakeLists.txt
│  └─ test_foo.cpp
├─ scripts/
│  └─ format.sh
├─ .vscode/
│  ├─ settings.json
│  ├─ launch.json
│  └─ tasks.json
├─ .clang-format
├─ .clang-tidy
├─ .editorconfig
├─ .gitignore
└─ README.md
```
