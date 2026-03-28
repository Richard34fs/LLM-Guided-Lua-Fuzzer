local function massive_string_manipulation(str)
local result = ""
local pattern = "^(.-)"
while true do
local match = str:match(pattern)
if not match then break end
result = result .. string.rep(match, 1000)
str = str:gsub(pattern, "")
end
return result
end