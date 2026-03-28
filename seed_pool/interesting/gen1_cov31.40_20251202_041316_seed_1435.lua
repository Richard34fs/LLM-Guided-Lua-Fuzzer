local t = {}
for i = 1, 1000 do
  if i % 2 == 0 then
    t[i] = "value" .. i
  else
    t["key" .. i] = i
  end
end
t = setmetatable(t, { __tostring = function() return "table" end })