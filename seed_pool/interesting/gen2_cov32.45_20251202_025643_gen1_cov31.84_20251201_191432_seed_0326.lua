local t = {}
local function f(x)
  return x * 2
end
t[f] = 3
print(t[f])
for i = 1, 5 do
  local i = 0
  if i == 2 then
    i = "two"
  end
  if i == 3 then
    i = true
  end
  print(i)
end
local meta = getmetatable(t) or {}
meta.__index = function(self, key)
  if type(key) == "number" and key > 0 and key <= #self then
      return self[key]
  else
      return nil
  end
end
setmetatable(t, meta)
print(t[1]) -- should print the first element of t