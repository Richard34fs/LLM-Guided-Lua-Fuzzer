function manipulate_string(s)
local t = {}
for i = 1, #s do
if i % 2 == 0 then
t[i] = string.rep(s:sub(i, i), 3)
else
t[i] = string.gsub(s:sub(i, i), "[aeiou]", "")
end
end
return table.concat(t)
end