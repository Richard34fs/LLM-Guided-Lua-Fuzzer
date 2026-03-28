local function manipulate_string(s)
local result = ""
for i = 1, #s do
if i % 2 == 0 then
result = result .. string.rep(" ", i)
else
result = result .. string.rep("$", i)
end
end
return string.gsub(result, "[aeiou]", "")
end