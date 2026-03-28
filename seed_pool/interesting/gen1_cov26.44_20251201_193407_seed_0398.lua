local function create_cyclic_metatables(n)
    local mt = {}
    for i = 1, n do
        local new_mt = {
            __index = mt,
            __newindex = mt,
            __add = mt,
            __call = mt,

            -- Insert extra functions or fields here
            foo = function() end,
            bar = "baz",
        }

        setmetatable(mt, new_mt)
        mt = new_mt
    end

    -- Remove the __add metamethod from the last metatable
    new_mt.__add = nil

    return mt
end