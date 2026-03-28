local function massive_string_manipulation(str)
local result = ""
local pattern = "."
for i = 1, 100 do
str = string.rep(str, 2)
str = string.gsub(str, pattern, "")
result = result .. str
pattern = pattern .. "."
end
return result
end