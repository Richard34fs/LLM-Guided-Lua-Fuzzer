local t = {}
for i=1,10 do
  t[i] = i*2
end
setmetatable(t, {
  __index = function(table, key)
    return "value not found"
  end,
  __newindex = function(table, key, value)
    rawset(table, key, value .. " (new value)")
  end
})
local s = ""
for k,v in pairs(t) do
  s = s .. tostring(k) .. " : " .. tostring(v) .. "\n"
end
print(s)