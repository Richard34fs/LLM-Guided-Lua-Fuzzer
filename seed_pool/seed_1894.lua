function variadic(...)
print(...)
local arg = {...}
if #arg > 1 then
variadic(table.unpack(arg, 2))
end
end
variadic("a", "b", "c", "d")