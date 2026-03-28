local t = {}
for i = 1, 1000 do
    local key = math.random() > 0.5 and "key" .. i or i
    table.insert(t, key)
end

local ipairs_original = ipairs
local print_original = print
local t_shadowed = {}
for i, v in pairs(t) do
    table.insert(t_shadowed, v)
end
for k, v in pairs(t_shadowed) do
    print(k, v)
end