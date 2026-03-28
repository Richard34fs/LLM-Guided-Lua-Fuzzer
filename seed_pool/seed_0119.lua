local function manipulate_string(str)
local modified = string.rep(str, 20)
modified = string.gsub(modified, "a", "")
for i = 1, #str do
modified = modified .. str:sub(i, i)
end
return modified
end