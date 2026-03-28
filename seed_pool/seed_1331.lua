local function manipulate_string(input)
local result = ""
for i = 1, 100 do
result = result .. string.rep("x", 1000) .. "\n"
end
return string.gsub(result, "xxxx", "")
end