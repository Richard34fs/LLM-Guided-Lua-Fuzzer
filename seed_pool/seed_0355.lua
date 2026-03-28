local function manipulate_string(s)
local result = ""
for i = 1, #s do
result = result .. string.rep(s:sub(i, i), 2)
end
return result
end