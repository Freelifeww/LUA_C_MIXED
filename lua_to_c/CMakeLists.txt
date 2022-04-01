cmake_minimum_required(VERSION 3.5.1)

project(LUA_C VERSION 1.0)

SET(CMAKE_SYSTEM_NAME Linux)


include_directories("${PROJECT_SOURCE_DIR}../lua-5.4.4/src")
include_directories("${PROJECT_SOURCE_DIR}")

#cross compiler
SET(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}gcc)
SET(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}g++)
SET(CMAKE_STRIP ${TOOLCHAIN_PREFIX}strip)

include_directories("${PROJECT_SOURCE_DIR}")

message("PROJECT_SOURCE_DIR = ${PROJECT_SOURCE_DIR}")

set(CMAKE_VERBOSE_MAKEFILE ON)

aux_source_directory(. SRC)

add_executable(LUA_TO_C ${SRC})

target_link_libraries(LUA_TO_C -ldl -lm)   #增加数学库链接

