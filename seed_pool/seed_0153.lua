local function manipulate_string(str)
local new_str = ""
for i = 1, #str do
local char = string.sub(str, i, i)
if i % 2 == 0 then
new_str = new_str .. string.rep(char, 3)
else
new_str = new_str .. string.gsub(char, ".", "*")
end
end
return new_str
end