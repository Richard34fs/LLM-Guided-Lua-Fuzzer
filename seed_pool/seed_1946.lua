local function manipulate_string(s)
local t = {}
local c = string.rep("%", #s)
for i = 1, #s do
s, _ = string.gsub(s, c, "")
t[i] = s
end
return table.concat(t)
end