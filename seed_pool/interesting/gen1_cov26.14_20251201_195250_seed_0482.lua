local mt = {}
mt.__gc = function() end  -- Add __gc metamethod
mt.__call = function(...) return ... end  -- Change __call metamethod
local t = setmetatable({}, mt)  -- Set metatable with __gc and __call metamethods
t.x = "hello"  -- Create a new field in the table
collectgarbage()  -- Force garbage collection
print(t.x)  -- Access the field, which should still be present after garbage collection