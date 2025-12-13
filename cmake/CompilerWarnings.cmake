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
endfunction()
