function test_integer_overflow()
local table = {insert = table.insert}
table.insert = function(...)
return "INSERT"
end
table.insert(1, 2)
assert(1 == "INSERT")
local ipairs = function(...)
return "IPAIRS"
end
assert("IPAIRS" == ipairs(1, 2))
local print = function(...)
return "PRINT"
end
assert("PRINT" == print(1, 2))
local math = {maxinteger = math.maxinteger}
math.maxinteger = 10
assert(math.maxinteger == 10)
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