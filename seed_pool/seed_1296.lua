function manipulate_string(str)
local new_str = ""
for i = 1, 10 do
new_str = new_str .. string.rep("x", 3 * i)
end
new_str = string.gsub(new_str, "xxx", "")
return new_str
end