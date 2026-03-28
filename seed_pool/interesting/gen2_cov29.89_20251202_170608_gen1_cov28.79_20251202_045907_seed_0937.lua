local function multi_return(i)
  local key = tostring(i) .. "_key"
  return i, key
end
local t = {}
for i = 1, 1000 do
  local value, key = multi_return(i)
  t[key] = value
end
print(#t)