function recurse(...)
if select("#", ...) > 0 then
print(...)
recurse(select(2, ...))
end
end
function test_stack_limit()
local args = {}
for i = 1, 5000 do
table.insert(args, "Argument " .. tostring(i))
end
recurse(unpack(args))
end