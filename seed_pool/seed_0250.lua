function manipulate_string(s)
local result = ""
for i = 1, #s do
result = result .. string.rep(string.gsub(s, ".", ""), i)
end
return result
end