function manipulate_string(s)
local t = {}
for i = 1, #s do
if string.find(s, "[^%w_]") then
t[i] = string.rep(string.sub(s, i, i), 2)
else
t[i] = s:sub(i, i)
end
end
return table.concat(t)
end