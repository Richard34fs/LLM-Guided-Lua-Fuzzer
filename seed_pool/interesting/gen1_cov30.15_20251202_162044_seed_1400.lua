local t = {}
t.__index = function() return t end
t.__newindex = function(t, k, v) rawset(t, k, v); t[k] = v end
t.__add = function(a, b) return a end
t.__call = function(...) return ... end
setmetatable(t, t)
local x = t + 1
x.foo = 'bar'
print(x(), x.foo)

local original_table_insert = table.insert  -- save the original `table.insert` function
table.insert = function(...)  -- define a new version of `table.insert`
    return ...   -- return the arguments passed to the function
end

local original_ipairs = ipairs    -- save the original `ipairs` function
ipairs = function(...)    -- define a new version of `ipairs`
    return ... -- return the arguments passed to the function
end

local original_print = print   -- save the original `print` function
print = function(...)    -- define a new version of `print`
    return ... -- return the arguments passed to the function
end

local x = t + 1
x.foo = 'bar'
print(x(), x.foo)
table.insert = original_table_insert   -- restore the original `table.insert` function
ipairs = original_ipairs     -- restore the original `ipairs` function
print = original_print       -- restore the original `print` function