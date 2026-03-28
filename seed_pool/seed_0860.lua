function recurse(...)
local args = {...}
if #args == 0 then
return true
end
return recurse(unpack(args))
end
local max_depth = 1000
for i = 1, max_depth do
local success, result = pcall(recurse, i)
if not success then
print("Stack overflow at depth", i - 1)
break
end
end