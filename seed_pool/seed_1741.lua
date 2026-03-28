local function manipulate_string(str)
local modified = ""
for i = 1, #str do
if i % 2 == 0 then
modified = modified .. string.rep(str:sub(i, i), 3)
else
modified = modified .. str:sub(i, i)
end
end
return string.gsub(modified, "([^a-z]+)", "")
end