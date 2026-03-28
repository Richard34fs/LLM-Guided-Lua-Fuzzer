local function manipulate_string(str)
local new_str = ""
for i = 1, 1000 do
str = string.rep(str, 2)
str = string.gsub(str, "abc", "xyz")
new_str = new_str .. str
end
return new_str
end