local function manipulate_string(s)
local result = ""
local pattern = "(%S)"
for i = 1, 20 do
s = string.rep(s, 3)
s = string.gsub(s, pattern, "")
result = result .. s
end
return result
end