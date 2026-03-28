local function new_metatable()
    local mt = {}
    mt.__index = mt
    mt.__newindex = mt
    mt.__add = function(a, b)
        return setmetatable({}, getmetatable(a))
    end
    mt.__call = function(self, ...)
        if self ~= getmetatable(self) then
            return new_metatable()
        end
    end
    return setmetatable({}, mt)
end
local a = new_metatable()
local table = {}
function table.insert(list, value)
    -- local version of table.insert
    print("Running local version of table.insert")
    list[#list + 1] = value
end
table.insert(a, "Hello")
print(a[1]) -- Output: Hello
_G.table.insert(a, "World")
print(a[2]) -- Output: World