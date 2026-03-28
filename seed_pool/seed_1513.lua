function test_integer_overflow()
local max_int = 2 ^ 31 - 1
assert(max_int + 1 == -2 ^ 31)
end
function test_division_by_zero()
assert(1 / 0 == math.huge)
assert(0 / 0 == nil)
end
function test_min_max_integers()
local min_int = -2 ^ 31
local max_int = 2 ^ 31 - 1
assert(min_int - 1 == 2 ^ 31 - 1)
assert(max_int + 1 == -2 ^ 31)
end