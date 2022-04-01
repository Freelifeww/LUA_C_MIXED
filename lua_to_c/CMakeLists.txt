cmake_minimum_required(VERSION 3.5.1)

project(LUA_TO_C VERSION 1.0)

#set config
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_VERBOSE_MAKEFILE ON)
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}) 
#set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/build)
#SET_TARGET_PROPERTIES

#include file
include_directories("${PROJECT_SOURCE_DIR}../lua-5.4.4/src")
include_directories("${PROJECT_SOURCE_DIR}")
message("---------PROJECT_SOURCE_DIR = ${PROJECT_SOURCE_DIR}-----------")

#cross compiler
set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}gcc)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}g++)
set(CMAKE_STRIP ${TOOLCHAIN_PREFIX}strip)

aux_source_directory(. SRC)

set(LIBFUNTION_TEST_SRC funtion_test.c)

add_library(mylib SHARED ${LIBFUNTION_TEST_SRC})		#添加动态库

install(TARGETS hello hello_static LIBRARY DESTINATION lib ARCHIVE DESTINATION lib)
install(FILES hello.h DESTINATION include/hello)

#add_executable(LUA_TO_C ${SRC})
#target_link_libraries(LUA_TO_C -ldl -lm)   #增加数学库链接

