local function manipulate_string(str)
local new_str = ""
for i = 1, #str do
if i % 2 == 0 then
new_str = new_str .. string.rep(string.sub(str, i, i), 5)
else
new_str = new_str .. string.gsub(string.sub(str, i, i), "[aeiou]", "")
end
end
return new_str
end