function coroutine_stress_test(depth, extra_arg)    -- Modified function definition with an extra argument
    local co = coroutine.create(function()
        if depth > 0 then
            return coroutine_stress_test(depth - 1, extra_arg)   -- Modified function call with an extra argument
        end
    end)
    local status, result = coroutine.resume(co, extra_arg)    -- Modified function call with an extra argument
    return status, result
end

local meta = {}           -- Declare a new metatable and assign it to the global variable `meta`
meta.__add = function()   -- Add two fields `__add` and `__concat` to the metatable `meta`, assigning them functions that return the string "added" and "concatenated", respectively
    return "added"
end
meta.__concat = function()
    return "concatenated"
end
local t = {}             -- Create a new table `t`
setmetatable(t, meta)   -- Set the metatable of the table `t` to `meta` using the `setmetatable()` function
local u = setmetatable({}, meta)   -- Create a new table `u` with the same metatable as `t`
print(t + u)                 -- Perform addition operation on the tables `t` and `u`, which will trigger the `__add` metamethod defined in the metatable `meta`
print(t .. u)                -- Perform concatenation operation on the tables `t` and `u`, which will trigger the `__concat` metamethod defined in the metatable `meta`