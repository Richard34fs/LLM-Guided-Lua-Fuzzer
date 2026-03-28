function manipulate_string(str)
local new_str = ""
for i = 1, 10 do
new_str = new_str .. string.rep("x", 1000) .. string.rep("y", 2000)
end
return string.gsub(new_str, "xxxxxxxxyyyyyy", "")
end