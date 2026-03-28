local function manipulate_string(s)
local result = ""
for i = 1, #s do
if i % 2 == 0 then
result = result .. string.rep(string.char(i), 3)
else
result = result .. string.gsub(s, ".", "")
end
end
return result
end