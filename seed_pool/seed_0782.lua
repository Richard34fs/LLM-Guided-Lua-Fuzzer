function manipulate_massive_strings()
local result = ""
for i = 1, 100 do
result = result .. string.rep(" ", i) .. "\n"
end
result = string.gsub(result, "(%s*)%s(%s*)\n", "%1.%2.\n")
return result
end