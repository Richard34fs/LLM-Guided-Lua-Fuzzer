local function manipulate_massive_strings()
local result = ""
for i = 1, 100 do
result = result .. string.rep("x", 10000) .. "\n"
end
result = string.gsub(result, "xxxx", "")
return result
end