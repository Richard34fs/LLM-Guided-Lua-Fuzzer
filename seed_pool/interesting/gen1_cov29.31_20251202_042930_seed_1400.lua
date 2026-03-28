local t = {}  -- Create a new table t
setmetatable(t, t)  -- Set its metatable to itself

-- Define functions to handle the __index, __newindex, __add, and __call metamethods for the table
t.__index = function() return t end
t.__newindex = function(t, k, v) rawset(t, k, v); t[k] = v end
t.__add = function(a, b) return a end
t.__call = function(...) return ... end

local x = t + 1  -- Invoke the __add metamethod on the table using the '+' operator
x.foo = 'bar'  -- Invoke the __newindex metamethod to add an extra field 'foo' to the table
print(x(), x.foo)  -- Invoke the __call metamethod on the table using the () operator and print the result