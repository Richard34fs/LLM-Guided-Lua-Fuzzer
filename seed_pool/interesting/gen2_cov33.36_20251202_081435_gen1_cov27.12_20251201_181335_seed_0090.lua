local table = {}
table.insert = function (t, v)
    t[#t + 1] = v
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
    for _, v in ipairs({...}) do
        io.write(tostring(v), "\t")
    end
    io.write("\n")
end
a = {}
b = "0"
c = 0
for i=1,15 do
  a[b] = i
  b = tostring(tonumber(b) + 1)
  c = c + 1
end
print(a["1"])