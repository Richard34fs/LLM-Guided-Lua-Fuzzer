local t = {}
for i=1,1000 do
    local key = (i % 3 == 0) and tostring(i) or i
    t[key] = i
end
do
    local t2 = {}

    -- Override built-in functions with local versions
    local table_insert = table.insert
    local ipairs = ipairs
    local print = print

    for k,v in pairs(t) do
        if type(k) ~= "number" then
            table_insert(t2, k)  -- Invoke the local version of table.insert
        end
    end
    t = t2
end