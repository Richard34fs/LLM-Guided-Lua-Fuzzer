function manipulate_string(s)
local t = {}
for i = 1, #s do
t[i] = string.rep(string.char(s:byte(i)), 10)
end
return table.concat(t) .. string.gsub(s, ".", "")
end