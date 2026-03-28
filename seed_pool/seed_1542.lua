local function generate_lua(str)
local result = ""
for i = 1, string.len(str) do
local char = string.sub(str, i, i)
result = result .. string.rep(char, i)
end
return result
end