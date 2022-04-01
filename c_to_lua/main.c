#include <stdio.h>
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"


int main(int argc, char const *argv[])
{
    
    lua_State *L = luaL_newstate();
    luaL_openlibs(L);

    if(luaL_loadfile(L,"/home/share/samba/freelife_study/LUA_C_MIXED/c_to_lua/lua_test.lua") || lua_pcall(L,0,0,0)) {
        printf("error %s\n", lua_tostring(L,-1));
        return -1;
    }

    lua_getglobal(L,"width");
    lua_getglobal(L,"height");
    
    lua_Number width = lua_tointeger(L,-2);
    lua_Number height = lua_tointeger(L,-1);


    printf("lua variable width = %d\n", (int)width);
    printf("lua variable height = %d\n", (int)height);
    
    lua_getglobal(L,"add");

    lua_pushnumber(L, width);
    lua_pushnumber(L, height);

    if(lua_pcall(L, 2, 1, 0) != 0){
        printf("error %s\n", lua_tostring(L,-1));
        return -1;
    }

    double sum = lua_tonumber(L, -1);
    printf("sum = %f \n", sum);

    lua_pop(L, 1);

    lua_close(L);

    printf("---hello word---\n");
    /* code */
    return 0;
}
