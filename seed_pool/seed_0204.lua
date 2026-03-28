local function string_manipulation(str)
local new_str = ""
for i = 1, 1000 do
new_str = new_str .. string.rep("a", 1000) .. string.rep("b", 2000)
end
new_str = string.gsub(new_str, "pattern", "replacement")
return new_str
end