local function manipulate_string(str)
local result = ""
for i = 1, 20 do
result = result .. string.rep("a", 100) .. string.gsub("b", "[^" .. str .. "]", "")
end
return result
end