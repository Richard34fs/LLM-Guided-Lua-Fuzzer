local function test_integer_overflow(a, b)
assert(a + b > a)
end
local function test_division_by_zero(a, b)
assert(b ~= 0)
end
local function test_min_max_integers(a)
local min_int = -(2^31)
local max_int = (2^31) - 1
assert(a > min_int and a < max_int)
end
local function test_bitwise_operations(a, b)
local result = bit.band(a, b)
assert(result >= 0 and result <= 255)
end