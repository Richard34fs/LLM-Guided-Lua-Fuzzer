local _table_insert = table.insert
local _ipairs = ipairs
local _print = print
local chunk = "function mixTypes(a) local t = {} for i=1,#a do if type(a[i]) == \"number\" then a[i] = tostring(a[i]) else a[i] = tonumber(a[i]) end t[a[i]] = true end return t end"
local f = load(chunk)
table.insert = function(...)
    print("executing table.insert")
    _table_insert(...)
end
ipairs = function(...)
    print("executing ipairs")
    _ipairs(...)
end
print = function(...)
    print("executing print")
    _print(...)
end
return f()