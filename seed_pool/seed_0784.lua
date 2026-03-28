local function manipulate_massive_strings(n)
local result = ""
for i = 1, n do
result = result .. string.rep("x", i) .. "\n"
end
return result
end