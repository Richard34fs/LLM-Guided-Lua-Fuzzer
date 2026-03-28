local function manipulate_string(str)
local result = ""
for i = 1, 100 do
str = string.rep(str, i)
str = string.gsub(str, "a", "")
end
for j = 1, #str do
result = result .. str:sub(j, j)
end
return result
end