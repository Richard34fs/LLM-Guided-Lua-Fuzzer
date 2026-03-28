local function manipulate_string(s)
local result = ""
for i = 1, #s do
if string.find(s, "a") then
result = result .. string.rep("b", 300)
else
result = result .. string.gsub(s, "c", "")
end
end
return result
end