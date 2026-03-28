local function manipulate_string(s)
local result = ""
for i = 1, #s do
result = result .. string.rep(string.sub(s, i, i), 3)
end
return string.gsub(result, "a", "b")
end