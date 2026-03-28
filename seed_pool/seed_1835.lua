function generate_code(str)
local result = ""
for i = 1, #str do
if string.find(str, ".-") then
result = result .. string.rep(str:sub(i, i), 20)
else
result = result .. str:sub(i, i)
end
end
return result
end