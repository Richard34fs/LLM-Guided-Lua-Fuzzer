local t = {}
t[t] = 3
print(t[t])
for i = 1, 5 do
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
local a, b, c = 1, 2, 3
local d
d = a + b * c
print(d)