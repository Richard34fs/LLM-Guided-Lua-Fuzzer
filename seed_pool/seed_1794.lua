local pattern = "@#$%^&*()"
local output = ""
for i = 1, 100 do
output = output .. string.rep(pattern, i) .. "\n"
end
output = string.gsub(output, pattern, "")
print(output)