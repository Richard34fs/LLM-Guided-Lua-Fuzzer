local function generate_massive_string(pattern, count)
local result = ""
for i = 1, count do
result = result .. string.rep(pattern, i)
end
return result
end
local function manipulate_massive_string(massive_string, pattern)
return string.gsub(massive_string, pattern, "")
end