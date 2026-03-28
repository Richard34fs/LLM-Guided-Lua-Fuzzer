function manipulate_strings(n)
local result = ""
for i = 1, n do
result = result .. string.rep(" ", i) .. string.gsub("abc", ".", "%1") .. "\n"
end
return result
end