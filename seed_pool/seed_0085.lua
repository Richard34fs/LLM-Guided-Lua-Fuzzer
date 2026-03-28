function manipulate_massive_strings(str)
local result = ""
for i = 1, 10 do
result = result .. string.rep(" ", i) .. string.gsub(str, "a", "")
end
return result
end