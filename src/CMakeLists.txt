add_library(my_project_lib
  foo.cpp
)

target_include_directories(my_project_lib
  PUBLIC
    ${PROJECT_SOURCE_DIR}/include
)

target_compile_features(my_project_lib PUBLIC cxx_std_20)

# 统一警告策略（可选但强烈推荐）
set_project_warnings(my_project_lib ${MY_PROJECT_ENABLE_WERROR})

# Sanitizers（可选）
if(MY_PROJECT_ENABLE_SANITIZERS)
  enable_sanitizers(my_project_lib)
endif()
