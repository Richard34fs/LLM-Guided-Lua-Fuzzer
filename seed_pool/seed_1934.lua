function generate_code(str)
local pattern = "^(.-)%1+"
local repeated_str = string.rep(str, 2000)
while true do
local match = string.match(repeated_str, pattern)
if not match then
break
end
repeated_str = string.gsub(repeated_str, match, "")
end
return repeated_str
end