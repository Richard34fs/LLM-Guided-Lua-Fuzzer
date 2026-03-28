a = {}
table.insert(a, 1, "A") -- Global table.insert function
local insert = function (t, pos, value) -- Local version of table.insert defined as a closure
    t[pos] = value
end
insert(a, 2, "B") -- Local table.insert function
for i,v in ipairs(a) do
    print(i, v)
end
local pairs = function (t) -- Local version of pairs defined as a closure
    local i = 0
    return function ()
        i = i + 1
        if t[i] then
            return i, t[i]
        end
    end
end
for k,v in pairs(a) do
    print(k, v)
end
local print = function (...) -- Local version of print defined as a closure
    local args = {...}
    for _,v in ipairs(args) do
        io.write(tostring(v), " ")
    end
    io.write("\n")
end
print("A", "B") -- Global print function
print("C", "D") -- Local print function