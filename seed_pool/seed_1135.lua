local function manipulate_string(s)
local result = ""
for i = 1, #s do
result = result .. string.rep(string.gsub(s:sub(i, i), "a", ""), 30)
end
return result
end