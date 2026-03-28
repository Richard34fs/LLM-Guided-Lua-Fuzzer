local function manipulate_string(s)
local result = ""
for i = 1, #s do
local c = s:sub(i, i)
if i % 2 == 0 then
c = string.rep(c, 3)
else
c = string.gsub(c, ".", "-")
end
result = result .. c
end
return result
end