function manipulate_string(str)
local result = ""
for i = 1, #str do
result = result .. string.rep(str:sub(i, i), 20)
end
return string.gsub(result, ".", "*")
end