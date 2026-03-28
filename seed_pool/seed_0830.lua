local function manipulate_string(str)
local result = ""
local i = 0
while i < #str do
i = i + 1
if string.match(str, "pattern") then
result = result .. string.rep("x", 500)
else
result = result .. str:sub(i, i)
end
end
return result
end