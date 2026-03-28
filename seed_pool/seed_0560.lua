local function manipulate_string(str)
local result = ""
str = string.rep(str, 10)
str = string.gsub(str, "a", "")
for i = 1, #str do
result = result .. str:sub(i, i)
end
return result
end