local function manipulate_string(str)
local new_str = ""
for i = 1, 100 do
new_str = new_str .. string.rep("A", 2^i)
end
new_str = string.gsub(new_str, "B", "")
return new_str
end