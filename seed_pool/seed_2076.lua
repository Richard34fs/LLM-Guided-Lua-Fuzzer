function generate_massive_string(pattern, count)
local output = ""
for i = 1, count do
output = output .. string.rep(pattern, i) .. "\n"
end
return output
end