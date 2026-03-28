function double(x)
  return x * 2
end
local t = {}
for i=1,10 do
  t[i] = double(i)
end
for k,v in pairs(t) do
  local function convertToString()
    return tostring(v)
  end
  t[k] = convertToString()
end
for k,v in pairs(t) do
  t[k] = v .. "foo"
end
print(t[5])