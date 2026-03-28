function manipulate_string(s)
local result = ""
for i = 1, #s do
if string.match(s, "^(.-)(%d+)$", i) then
result = result .. string.rep(s:sub(i, i), tonumber(s:sub(i + 1, i + 1)))
i = i + 2
else
result = result .. s:sub(i, i)
i = i + 1
end
end
return result
end