cmake_minimum_required(VERSION 3.25)

project(my_project
  VERSION 0.1.0
  LANGUAGES CXX
)

# 全局基础设置（小项目够用；大项目可进一步封装到 ProjectOptions.cmake）
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# 给 clangd / clang-tidy 提供 compile_commands.json
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

option(MY_PROJECT_BUILD_TESTS "Build tests" ON)
option(MY_PROJECT_ENABLE_WERROR "Treat warnings as errors" ON)
option(MY_PROJECT_ENABLE_SANITIZERS "Enable sanitizers" OFF)
option(MY_PROJECT_ENABLE_CLANG_TIDY "Enable clang-tidy" ON)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
include(ProjectOptions)
include(CompilerWarnings)
include(Sanitizers)

add_subdirectory(src)
add_subdirectory(apps)

if(MY_PROJECT_BUILD_TESTS)
  enable_testing()
  add_subdirectory(tests)
endif()
