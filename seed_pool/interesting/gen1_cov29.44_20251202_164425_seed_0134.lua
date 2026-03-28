local function create_metatable()
  local mt = {}
  mt.__index = mt
  mt.__newindex = mt
  mt.__add = function(a, b) return a end
  mt.__call = function(a, ...) a(...) end
  setmetatable({}, mt)
  return mt
end
local metatables = {}
for i = 1, 100 do
  local function inner_function()
    local x = 5
    print(x)
  end
  table.insert(metatables, create_metatable())
  inner_function()
end