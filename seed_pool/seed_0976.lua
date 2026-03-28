function manipulate_string(s)
local t = {}
for i = 1, #s do
if i % 2 == 0 then
t[i] = string.rep(string.sub(s, i, i), 3)
else
t[i] = string.gsub(string.sub(s, i, i), ".", "")
end
end
return table.concat(t)
end