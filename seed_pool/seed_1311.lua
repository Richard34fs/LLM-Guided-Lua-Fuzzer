local function manipulate_string(s)
local t = {}
for i = 1, 100 do
t[i] = string.rep(string.gsub(s, "[^a-z]", ""), i) .. "\n"
end
return table.concat(t)
end