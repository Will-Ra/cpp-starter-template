function(add_my_executable name source)
    add_executable(${name} ${source})
    set_project_warnings(${name} ${MY_PROJECT_ENABLE_WERROR})
endfunction()

add_executable(my_project_cli my_project_cli.cpp)
target_link_libraries(my_project_cli PRIVATE my_project_lib)
