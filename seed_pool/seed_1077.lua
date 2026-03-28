function manipulate_string(s)
local result = ""
for i = 1, #s do
if string.find(s, "pattern", i, true) then
result = result .. string.rep(" ", 1000)
else
result = result .. s:sub(i, i)
end
end
return result
end