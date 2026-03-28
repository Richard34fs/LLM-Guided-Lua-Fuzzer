local t = {}
for i=1,10 do
  t[i] = i*2
end
setmetatable(t, {__add = function(a, b) return a .. tostring(b) end})  -- Added metatables and metamethods
local s = ""
for k,v in pairs(t) do
  s = s .. tostring(k) .. " : " .. tostring(v) .. "\n"
end
print(s)