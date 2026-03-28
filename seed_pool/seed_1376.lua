local function manipulate_string(str)
local result = ""
for i = 1, 20 do
str = string.rep(str, i)
str = string.gsub(str, "a", "")
result = result .. str
end
return result
end