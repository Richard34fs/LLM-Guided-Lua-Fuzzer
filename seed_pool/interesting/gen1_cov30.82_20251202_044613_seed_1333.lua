local t = {}
for i = 1, 1000 do
  local key = tostring(i)
  t[key] = i
end

local mt = {
  __index = function(table, key)
    return 0
  end
}

setmetatable(t, mt)
for i = 1, 1000 do
  local key = math.random(1, 2^30)
  print(t[key]) -- Prints "0" for any missing keys
end