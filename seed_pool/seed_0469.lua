function test_integer_overflow()
local max_int = 2^31-1
local result = max_int + 1
assert(result == -2^31, "Integer overflow not handled correctly")
end