local function generate_code(str)
local pattern = "^(.-)%1%1+"
local result = string.rep(str, 1000)
while true do
local match = string.match(result, pattern)
if not match then
break
end
result = string.gsub(result, pattern, "")
end
return result
end