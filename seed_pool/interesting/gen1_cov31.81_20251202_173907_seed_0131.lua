local t = {}
for i = 1, 1000 do
  local key = tostring(i)
  t[key] = i
end
for j = 1, 1000 do
  local key = tostring(j) .. "a"
  t[key] = j
end
local chunk = "local t = {}\n"
for k, v in pairs(t) do
  chunk = chunk .. string.format("t['%s'] = %s\n", k, v)
end
load(chunk)()