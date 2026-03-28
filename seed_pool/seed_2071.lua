local function test_integer_overflow(a, b)
assert(a + b == (a + b) % 2^32)
end
local function test_division_by_zero(a, b)
assert(b ~= 0)
end
local function test_min_max_integers(a, b)
assert(a >= -2^31 and a <= 2^31 - 1)
assert(b >= -2^31 and b <= 2^31 - 1)
end
local function test_bitwise_operations(a, b)
assert(a ~= 0 and b ~= 0)
assert((a & b) == (a & b) % 2^32)
assert((a | b) == (a | b) % 2^32)
end