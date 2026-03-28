function manipulate_string(s)
local result = ""
for i = 1, #s do
if string.find(s, ".*") then
result = result .. string.rep(s, i)
else
result = result .. s
end
end
return result
end