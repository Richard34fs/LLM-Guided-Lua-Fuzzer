function recursive_variadic(...)
local args = {...}
if #args > 0 then
print(args[1])
recursive_variadic(...)
end
end