local function create_cyclic_metatables(n)
local mt = {}
for i = 1, n do
local new_mt = {
__index = mt,
__newindex = mt,
__add = mt,
__call = mt,
}
setmetatable(mt, new_mt)
mt = new_mt
end
return mt
end