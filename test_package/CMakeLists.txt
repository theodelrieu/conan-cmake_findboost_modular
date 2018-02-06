project(test_package)
cmake_minimum_required(VERSION 3.1.2)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup(TARGETS)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_EXTENSIONS OFF)

add_executable(${PROJECT_NAME} test_package.cpp)

find_package(Boost COMPONENTS REQUIRED process)

if (Boost_FOUND)
  target_link_libraries(${PROJECT_NAME} PUBLIC Boost::process)
endif()
