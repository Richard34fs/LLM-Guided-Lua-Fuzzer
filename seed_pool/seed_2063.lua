local function manipulate_strings(n)
local result = ""
for i = 1, n do
local pattern = string.rep("%", i)
result = result .. string.gsub("abcdefghijklmnopqrstuvwxyz", pattern, "")
end
return result
end