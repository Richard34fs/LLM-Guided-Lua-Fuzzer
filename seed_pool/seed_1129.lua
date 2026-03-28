local function manipulate_string(str)
local new_str = ""
str = string.gsub(str, "a", "b")
for i = 1, 10 do
new_str = new_str .. str
end
return new_str
end