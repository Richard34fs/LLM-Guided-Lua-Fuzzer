function manipulate_string(s)
local t = {}
local count = string.match(s, "(%d+)")
local pattern = string.sub(s, string.find(s, ",") + 1)
for i = 1, count do
table.insert(t, string.rep(string.gsub(s, pattern, ""), i))
end
return table.concat(t)
end