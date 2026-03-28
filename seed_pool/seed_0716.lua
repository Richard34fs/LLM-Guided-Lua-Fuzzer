local function generate_massive_strings(pattern, count)
local result = ""
for i = 1, count do
result = result .. string.rep(pattern, i) .. "\n"
end
return result
end