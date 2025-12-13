include(FetchContent)

FetchContent_Declare(
  Catch2
  GIT_REPOSITORY https://github.com/catchorg/Catch2.git
  GIT_TAG v3.5.4
)
FetchContent_MakeAvailable(Catch2)

add_executable(my_project_tests
  test_foo.cpp
)
target_link_libraries(my_project_tests
  PRIVATE my_project_lib Catch2::Catch2WithMain
)

include(CTest)
add_test(NAME my_project_tests COMMAND my_project_tests)
