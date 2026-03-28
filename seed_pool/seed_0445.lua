local function manipulate_massive_strings()
local result = ""
for i = 1, 1000 do
result = result .. string.rep("a", 10000) .. string.gsub("b", "c", "d")
end
return result
end