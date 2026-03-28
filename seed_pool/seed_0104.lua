function rec(...)
local args = {...}
if #args < 10 then
rec(table.unpack(args), table.unpack(args))
else
print("Stack limit reached")
end
end
rec(1, 2, 3, 4, 5, 6, 7, 8, 9)