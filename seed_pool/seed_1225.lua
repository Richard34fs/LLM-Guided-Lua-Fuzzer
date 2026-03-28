local function manipulate_massive_strings(n)
local result = ""
for i = 1, n do
result = result .. string.rep("X", i) .. string.gsub("Y", "Y", "")
end
return result
end