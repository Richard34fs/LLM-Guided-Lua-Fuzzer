function recursive_varargs(...)
local args = {...}
if #args > 0 then
print(unpack(args))
recursive_varargs(unpack(args))
end
end