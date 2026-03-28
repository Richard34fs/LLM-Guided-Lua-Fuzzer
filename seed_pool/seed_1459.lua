function test_integer_overflow()
local a = math.maxinteger
local b = a + 1
assert(a == b)
local c = math.mininteger
local d = c - 1
assert(c == d)
local e = 5 / 0
assert(e == math.huge)
local f = -5 / 0
assert(f == -math.huge)
local g = 0 / 0
assert(g ~= g)
end