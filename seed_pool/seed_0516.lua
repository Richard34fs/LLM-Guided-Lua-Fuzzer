local function manipulate_string(s)
local t = {}
for i = 1, #s do
if string.match(s, "[0-9]+") then
table.insert(t, string.rep(s:sub(i, i), 5))
else
table.insert(t, s:sub(i, i) .. "x")
end
end
return table.concat(t)
end