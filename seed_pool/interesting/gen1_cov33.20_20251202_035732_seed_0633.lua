local t = {}
t[1] = "one"
t[2] = 2
t["three"] = 3
for k, v in pairs(t) do
print(k .. ": " .. tostring(v))
end
print(1 + "1")
print("1" + 1)
local table = { insert = table.insert }
local ipairs = function()
  print("local version of ipairs called")
  return pairs({})
end
local print = function(...)
  local args = {...}
  for i, v in ipairs(args) do
    io.write(tostring(v), " ")
  end
  io.write("\n")
end
print(1 + "1")
print("1" + 1)