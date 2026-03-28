local function massive_string_manipulation(str)
local result = ""
for i = 1, 100 do
str = string.rep(str, 2)
str = string.gsub(str, "pattern", "")
end
result = result .. str
return result
end