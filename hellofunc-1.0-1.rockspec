 package = "hellofunc"
 version = "1.0-1"
 source = {
    url = "git://github.com/fantajeon/lua_ffi_examples.git" -- We don't have one yet
 }
 description = {
    summary = "An example for the LuaRocks tutorial.",
    detailed = [[
       This is an example for the LuaRocks tutorial.
       Here we would put a detailed, typically
       paragraph-long description.
    ]],
    homepage = "https://github.com/fantajeon/lua_ffi_examples.git", -- We don't have one yet
    license = "BSD" -- or whatever you like
 }
 dependencies = {
    "lua ~> 5.1",
    "torch >= 7.0",
    "luaffi"
    -- If you depend on other rocks, add them here
 }
 build = {
    type="command",
    build_command = [[
        gcc -Wall -shared -fPIC -o libhellofunc.so hellofunc.c
    ]] 
    -- ,
    -- install_command = [[
    --    echo "test" 
    --    th test.lua
    --]]
 }
