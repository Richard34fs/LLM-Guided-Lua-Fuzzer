local function manipulate_string(input)
local pattern = "a"
local output = ""
while #output < 1000 do
input = string.rep(input, 2)
input = string.gsub(input, pattern, "")
output = output .. input
end
return output
end