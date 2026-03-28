function string_manipulation(n)
local str = ""
for i = 1, n do
str = str .. "a"
end
local new_str = ""
for i = 1, n do
new_str = new_str .. string.rep("b", i)
end
local replaced_str = string.gsub(str, "a", "c")
return str, new_str, replaced_str
end