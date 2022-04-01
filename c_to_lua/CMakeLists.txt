cmake_minimum_required(VERSION 3.5.1)

project(LUA_C VERSION 1.0)

SET(CMAKE_SYSTEM_NAME Linux)

#cross compiler
SET(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}gcc)
SET(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}g++)
SET(CMAKE_STRIP ${TOOLCHAIN_PREFIX}strip)

include_directories("${PROJECT_SOURCE_DIR}../lua-5.4.4/src")
include_directories("${PROJECT_SOURCE_DIR}")

message("PROJECT_SOURCE_DIR = ${PROJECT_SOURCE_DIR}")

set(CMAKE_VERBOSE_MAKEFILE ON)

set(LUA_USE_LINUX 1)     #定义var1，也可以使用cmake -Dvar1=ON替代

set(LUA_COMPAT_5_3 1)    #定义var1，也可以使用cmake -Dvar1=ON替代

aux_source_directory(. SRC)

add_executable(LUA_C ${SRC})

#add_subdirectory(../lua-5.4.4/src)

target_link_libraries(LUA_C lua -ldl -lm)   #增加数学库链接

configure_file("${PROJECT_SOURCE_DIR}/project_version.h.in" "${PROJECT_SOURCE_DIR}/project_version.h")
