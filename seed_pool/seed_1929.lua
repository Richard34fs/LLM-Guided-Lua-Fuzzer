function manipulate_string(s)
local result = ""
for i = 1, #s do
if string.match(s, "^%w+$") then
result = result .. string.rep(string.sub(s, i, i), 5)
else
result = result .. string.gsub(s, "%W+", "")
end
end
return result
end