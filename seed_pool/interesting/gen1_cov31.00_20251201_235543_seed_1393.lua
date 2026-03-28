local t = {}
for i = 1, 10 do
  t[i] = tostring(i) .. "a"
end

-- Transform the first loop into a for ... in ipairs/pairs loop
for k, v in ipairs(t) do
  t[k] = tonumber(v:sub(1, 1)) + 1
end

-- Transform the second loop into a while loop
local k, v = next(t)
while k do
  print(type(k), type(v))
  k, v = next(t, k)
end