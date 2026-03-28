local t = {}
for i = 1, 1000 do
  local key = math.random() < 0.5 and tostring(i) or i
  t[key] = i
end

local mt = getmetatable(t) or {}
function mt.__newindex(table, key, value)
  if not rawget(table, key) then
    error("The key '" .. tostring(key) .. "' does not exist in the table.")
  end
  rawset(table, key, value)
end
setmetatable(t, mt)