local function manipulate_string(s)
local result = ""
for i = 1, #s do
local char = string.sub(s, i, i)
if i % 2 == 0 then
result = result .. string.rep(char, 5)
else
result = result .. string.gsub(char, ".", "*")
end
end
return result
end