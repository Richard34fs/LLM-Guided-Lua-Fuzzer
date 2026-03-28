local function generate_massive_string(pattern, count)
local result = ""
for i = 1, count do
result = result .. string.rep(pattern, i)
end
result = string.gsub(result, pattern, "")
return result
end