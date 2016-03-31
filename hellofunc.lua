local ffi = require 'ffi'

local C = ffi.load('hellofunc')
ffi.cdef[[
float isquare(float v);
]]

return C

