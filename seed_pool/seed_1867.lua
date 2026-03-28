local function manipulate_string(str)
local result = ""
for i = 1, 10 do
result = result .. string.rep("a", 10000)
end
return string.gsub(result, "a", "")
end