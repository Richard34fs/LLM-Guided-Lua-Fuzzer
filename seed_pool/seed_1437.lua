function manipulate_strings(n)
local result = ""
for i = 1, n do
local pattern = string.rep("a", i) .. "b"
result = result .. string.gsub("ababab", pattern, "")
end
return result
end