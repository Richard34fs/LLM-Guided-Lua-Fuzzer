local function manipulate_string(str)
local modified = ""
for i = 1, 100 do
str = string.rep(str, 2)
str = string.gsub(str, "a", "b")
modified = modified .. str
end
return modified
end