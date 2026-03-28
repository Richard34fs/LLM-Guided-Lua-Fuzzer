local function manipulate_string(str)
local result = ""
local pattern = "a"
for i = 1, #str do
if i % 2 == 0 then
pattern = string.rep(pattern, 2)
end
str = string.gsub(str, pattern, "")
pattern = string.rep(pattern, -1)
result = result .. str
end
return result
end