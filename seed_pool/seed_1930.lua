local function manipulate_string(str)
local result = ""
for i = 1, 100 do
result = result .. string.rep("a", 1000)
end
return string.gsub(result, "a", str)
end