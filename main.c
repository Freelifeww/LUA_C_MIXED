#include <stdio.h>
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"


int main(int argc, char const *argv[])
{
    
    lua_State *L = luaL_newstate();
    luaL_openlibs(L);
    lua_close(L);

    printf("---hello word---\n");
    /* code */
    return 0;
}
