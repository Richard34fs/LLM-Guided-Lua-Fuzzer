function generate_code(str)
local output = ""
for i = 1, #str do
if string.find(str, "^[^a-zA-Z0-9\n\t ]*$") then
output = output .. string.rep(string.char(i), 15)
end
end
return output
end