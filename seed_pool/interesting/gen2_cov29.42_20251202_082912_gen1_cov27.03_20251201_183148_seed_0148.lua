local table = {}
local insert = function(t, pos, value)
  t[pos] = value
end
local ipairs = function(t, func)
  for i, v in pairs(t) do
    func(i, v)
  end
end
local print = function(...)
  local args = {...}
  for _, v in ipairs(args) do
    io.write(tostring(v), " ")
  end
  io.write("\n")
end
local t = {}
for i = 1, 1000 do
  local key = tostring(i)
  t[key] = value
end
return t