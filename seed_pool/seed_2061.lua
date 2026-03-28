function manipulate_string(str)
local new_str = ""
for i = 1, #str do
new_str = new_str .. string.rep(string.gsub(str:sub(i, i), ".", "%0%0"), 2)
end
return new_str
end