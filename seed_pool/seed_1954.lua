function manipulate_string(str)
local result = ""
for i = 1, #str do
if i % 2 == 0 then
result = result .. string.rep(str:sub(i, i), 3)
else
result = result .. string.gsub(str:sub(i, i), ".", "")
end
end
return result
end