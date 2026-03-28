local function manipulate_string(s)
local t = {}
local pattern = "X"
for i = 1, #s do
if s:sub(i, i) == "X" then
t[i] = string.rep("Y", 5)
else
t[i] = s:sub(i, i)
end
end
return table.concat(t) .. string.gsub(s, pattern, "Z")
end