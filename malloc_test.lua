local ffi = require("ffi")

ffi.cdef([[
void *malloc(size_t size);
void free(void *ptr);
]])

local N = 32
local arr = ffi.cast("double *", ffi.C.malloc(N*ffi.sizeof("double")))
assert(arr ~= nil, "out of memory")

print("array =", arr)
arr[0] = 1.5
arr[N-1] = 2.5
print("arr[0] =", arr[0])
print("arr["..(N-1).."] =", arr[N-1])

ffi.C.free(arr)
