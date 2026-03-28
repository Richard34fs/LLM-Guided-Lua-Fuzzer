local function manipulate_massive_strings()
local result = {}
for i = 1, 10000 do
local string = "a" .. string.rep("b", i) .. "c"
string = string.gsub(string, "acb", "")
table.insert(result, string)
end
return table.concat(result, "\n")
end