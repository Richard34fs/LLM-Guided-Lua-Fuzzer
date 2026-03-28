local t = {}
for i = 1, 1000 do
  t[i] = i * 2
  t[tostring(i)] = i * 3
end
setmetatable(t, {__gc = function() print("Garbage collection or finalization triggered") end})