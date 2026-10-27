cmake_minimum_required(VERSION 3.16)

project(ai_agent_lab LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_executable(hello src/main.cpp)

enable_testing()
add_executable(test_main tests/test_main.cpp)
add_test(NAME BasicAddition COMMAND test_main)
