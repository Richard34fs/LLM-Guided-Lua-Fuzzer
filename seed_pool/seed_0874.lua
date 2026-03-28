function test_integer_overflow()
local max_int = 2147483647
local result = max_int + 1
assert(result == -2147483648)
end
function test_division_by_zero()
local divisor = 0
local error_msg = "Division by zero"
local function div_func()
return 1 / divisor
end
assert(div_func() == math.huge)
assert(div_func() == -math.huge)
end