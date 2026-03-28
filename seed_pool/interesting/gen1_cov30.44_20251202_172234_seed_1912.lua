local t = {}
for i = 1, 1000 do
  local key = tostring(i) .. "_key"
  t[key] = i
end
for i = 1001, 2000 do
  local key = tostring(i)
  t[key] = i
end
pcall(function()
  error("deliberate error")  -- deliberate error injection
end)