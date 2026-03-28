local function generate_code(str)
local output = ""
for i = 1, 100 do
output = output .. string.rep(str, i) .. "\n"
end
return output
end