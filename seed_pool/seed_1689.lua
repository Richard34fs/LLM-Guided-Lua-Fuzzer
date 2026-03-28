local function test_integer_overflow(a, b)
assert((a + b) > a, "Integer overflow detected")
end
local function test_division_by_zero(a, b)
assert(b ~= 0, "Division by zero detected")
end
local function test_min_max_integers(a)
local min_int = -2^31
local max_int = 2^31 - 1
assert(a > min_int and a < max_int, "Integer out of range")
end
local function test_bitwise_operations(a, b)
assert((a & b) == (a | b), "Bitwise operations result mismatch")
end