local function create_metatable()
    local t = {}
    local mt = {
        __index = t,
        __newindex = t,
        __add = function(a, b) return a end,
        __call = function(t) return create_metatable() end
    }
    setmetatable(t, mt)
    return t
end
local t = create_metatable()