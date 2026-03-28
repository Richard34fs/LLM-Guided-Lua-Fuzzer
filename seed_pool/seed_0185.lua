function manipulate_string(s)
local result = ""
for i = 1, #s do
result = result .. string.rep(s:sub(i, i), i)
end
return string.gsub(result, "[aeiou]", "")
end