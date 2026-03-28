local function generate_code(str)
local code = ""
for i = 1, #str do
local char = string.sub(str, i, i)
if char == "a" then
code = code .. "print('" .. string.rep("b", 3) .. "')"
elseif char == "b" then
code = code .. "print('" .. string.rep("c", 5) .. "')"
else
code = code .. "print('" .. char .. "')"
end
end
return code
end