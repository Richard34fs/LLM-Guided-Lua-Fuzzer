function manipulate_string(str)
local result = ""
for i = 1, 100 do
str = string.rep(str, 2)
str = string.gsub(str, "[^" .. i .. "]", "")
result = result .. str
end
return result
end