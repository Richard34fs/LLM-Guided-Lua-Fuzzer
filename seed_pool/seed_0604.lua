local function manipulate_string(s)
local t = {}
s = string.gsub(s, "x", "xx")
for i = 1, #s do
table.insert(t, s:sub(i, i))
if i % 2 == 0 then
table.insert(t, "x")
end
end
return table.concat(t)
end