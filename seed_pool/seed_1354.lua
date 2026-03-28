function manipulate_strings(n)
local result = ""
for i = 1, n do
result = result .. string.rep("A", i) .. "\n"
end
return result
end