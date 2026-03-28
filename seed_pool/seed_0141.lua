local function manipulate_massive_strings()
local result = ""
for i = 1, 10000 do
result = result .. string.rep("a", 1000) .. string.gsub("b", "b", "c")
end
return result
end