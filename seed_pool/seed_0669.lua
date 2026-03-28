function manipulate_string(s)
local result = ""
for i = 1, #s do
if i % 2 == 0 then
result = result .. string.rep(string.gsub(s, ".", ""), i)
else
result = string.rep(result, i)
end
end
return result
end