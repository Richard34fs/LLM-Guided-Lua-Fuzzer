t = {}
for i = 1, 1000 do
  t[i] = "value"
end
local function addKey(key)
  t[key] = "value"
end
for i = 1, 1000 do
  addKey("key" .. i)
end