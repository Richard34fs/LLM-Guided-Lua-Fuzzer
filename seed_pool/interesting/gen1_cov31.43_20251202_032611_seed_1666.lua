local function create_metatable(parent)
    local metatable = {
        __index = parent or metatable,
        __newindex = function() end,
        __add = function() return 0 end,
        __call = function() return true end,
    }
    setmetatable(metatable, metatable)
    return metatable
end
local metatable = {}
for i = 1, 100 do
    local parent = metatable[i - 1]
    metatable[i] = create_metatable(parent)
end
local function create_complex_table()
    local t = {
        a = 1,
        b = "string",
        c = function() return true end,
        d = {},
        e = {
            f = 2,
            g = "another string",
            h = false,
        },
    }
    setmetatable(t, metatable)

    return t
end
local complex_table = create_complex_table()