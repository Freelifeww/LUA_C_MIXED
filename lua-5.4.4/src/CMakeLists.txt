aux_source_directory(. LIB_SRC)
add_definitions(-DLUA_USE_LINUX)
add_definitions(-DLUA_COMPAT_5_3)
add_library(lua ${LIB_SRC})



