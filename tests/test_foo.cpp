#include <catch2/catch_test_macros.hpp>
#include "my_project/foo.hpp"

TEST_CASE("Add function works", "[foo]") {
    REQUIRE(my_project::add(1, 2) == 3);
    REQUIRE(my_project::add(-1, 1) == 0);
    REQUIRE(my_project::add(0, 0) == 0);
}
