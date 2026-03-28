function manipulate_string(s)
local t = {}
for i = 1, #s do
if string.find(s, ".-") then
table.insert(t, string.rep(string.gsub(s, ".-", ""), i))
end
end
return table.concat(t, "")
end