function manipulate_string(str)
local count = string.rep("?", #str)
local new_str = ""
for i = 1, #str do
new_str = new_str .. string.gsub(count, "?", str:sub(i, i))
end
return new_str
end