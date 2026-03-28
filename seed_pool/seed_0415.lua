local function manipulate_string(input)
local output = ""
for i = 1, string.len(input) do
if i % 2 == 0 then
output = output .. string.rep(" ", i)
else
output = output .. string.rep("#", i)
end
end
return string.gsub(output, "#+", "!")
end