function generate_code(str)
local result = ""
local pattern = "[^" .. str:sub(1, 1) .. "]+"
for i = 1, #str do
result = result .. string.rep(str:sub(i, i), i)
end
return string.gsub(result, pattern, "")
end