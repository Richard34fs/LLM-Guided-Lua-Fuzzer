function test_integer_overflow()
local a = 2^31 - 1
local b = 2^31 - 1
local result = a + b
assert(result < 0)
end