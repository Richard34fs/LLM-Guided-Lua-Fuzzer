function generate_lua(str)
local result = ""
for i = 1, #str do
local char = str:sub(i, i)
if i % 2 == 0 then
result = result .. string.rep(char, i)
else
result = string.gsub(result, char, "")
end
end
return result
end