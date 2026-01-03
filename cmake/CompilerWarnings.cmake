function(set_project_warnings target enable_werror)
  if (CMAKE_CXX_COMPILER_ID MATCHES "Clang|AppleClang|GNU")
    target_compile_options(${target} PRIVATE
      -Wall -Wextra -Wpedantic
      -Wconversion -Wsign-conversion
    )
    if(enable_werror)
      target_compile_options(${target} PRIVATE -Werror)
    endif()
  elseif (MSVC)
    target_compile_options(${target} PRIVATE /W4)
    if(enable_werror)
      target_compile_options(${target} PRIVATE /WX)
    endif()
  endif()

  if(MY_PROJECT_ENABLE_CLANG_TIDY)
    find_program(CLANG_TIDY_EXE NAMES clang-tidy PATHS /opt/homebrew/opt/llvm/bin)
    if(CLANG_TIDY_EXE)
      set_target_properties(${target} PROPERTIES CXX_CLANG_TIDY "${CLANG_TIDY_EXE}")
    endif()
  endif()
endfunction()
