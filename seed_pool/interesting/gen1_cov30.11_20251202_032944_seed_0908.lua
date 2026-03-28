local t = {}
for i = 1, 10 do
    if i % 2 == 0 then
        t[i] = i + 1
    else
        t[i] = tostring(i + 1)
    end
end
local ipairs = ipairs
local print = print
for k, v in pairs(t) do
    print(k, v, type(k), type(v))
end