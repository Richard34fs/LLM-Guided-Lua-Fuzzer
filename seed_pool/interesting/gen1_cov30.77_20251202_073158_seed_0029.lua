local t = {}
for i = 1, 1000 do
  local key = tostring(i)
  t[key] = i
  if key == '42' then
    setmetatable(t, {__gc = function() print('Finalizing table') end})
  end
end