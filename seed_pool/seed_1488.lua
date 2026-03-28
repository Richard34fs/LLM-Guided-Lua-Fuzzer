local function massive_string(n)
local result = ""
for i = 1, n do
result = result .. string.rep("a", 10000)
end
return result
end