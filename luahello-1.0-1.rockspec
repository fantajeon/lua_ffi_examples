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
    license = "MIT/X11" -- or whatever you like
 }
 dependencies = {
    "lua ~> 5.1"
    -- If you depend on other rocks, add them here
 }
 build = {
    type="builtin",
    modules = {
        hellofunc = "hellofunc.c"
    }
 }
