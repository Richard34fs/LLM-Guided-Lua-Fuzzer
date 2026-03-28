local function manipulate_string(input)
local output = ""
for i = 1, 100 do
output = output .. string.rep(string.gsub(input, "pattern" .. i, ""), i)
end
return output
end