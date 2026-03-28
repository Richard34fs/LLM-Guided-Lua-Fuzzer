function manipulate_strings(str)
local new_str = ""
for i = 1, 100 do
new_str = new_str .. string.rep("a", 1000) .. string.gsub("a", "a", "")
end
return new_str
end