function generate_code(str)
local result = ""
local count = #str
for i = 1, count do
result = result .. string.rep(str:sub(i, i), i)
end
result = string.gsub(result, "[^a-zA-Z0-9]", " ")
return result
end