local function manipulate_string(str)
local result = ""
str = string.gsub(str, "[^0-9]", "")
result = str .. string.rep(str, 1000)
return result
end