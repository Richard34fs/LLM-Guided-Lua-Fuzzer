local t = {}
t["a"] = 1
t[2] = "b"
print(t["a"] + #t[2])

local original_table_insert = table.insert
table.insert = function(...)
    print("Using the local version of table.insert")
    return original_table_insert(...)
end

local original_ipairs = ipairs
ipairs = function(...)
    print("Using the local version of ipairs")
    return original_ipairs(...)
end

local original_print = print
print = function(...)
    print("Using the local version of print")
    return original_print(...)
end


local x = 10
for i=1,x do
x = true
original_print(type(x))
end
original_print(type(x))