function generate_lua(n)
local result = ""
for i = 1, n do
result = result .. string.rep("a", i) .. "\n"
end
return result
end
print(generate_lua(5))