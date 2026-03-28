local t = {}

local metatable = {
  __add = function(a, b)
    return a .. b
  end,
  __concat = function(a, b)
    return tostring(a) .. tostring(b)
  end,
  __len = function(a)
    return #a
  end,
  __call = function(a, ...)
    local args = {...}
    return a(...)
  end
}
setmetatable(t, metatable)
for i = 1, 1000 do
  local key = tostring(i)
  if i % 2 == 0 then
    key = tonumber(key)
  end
  t[key] = i
end