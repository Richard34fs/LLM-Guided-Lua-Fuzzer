local t = {1, "2", [3]  = 3}
print(t[1] + t[3])
for k, v in pairs(t) do
    print(type(k), type(v))
end

local table = {}
function table.insert(list, value)
  list[#list + 1] = value
end
local ipairs = function (t)
  local i = 0
  return function ()
    i = i + 1
    if t[i] then
      return i, t[i]
    end
  end
end
local print = function (...)
  for _, v in ipairs{...} do
    io.write(tostring(v), "\t")
  end
  io.write("\n")
end