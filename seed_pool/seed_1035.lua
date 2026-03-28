local function generate_lua_code(str)
local result = ""
local pattern = "..."
for i = 1, #str do
if string.match(str, pattern, i) then
result = result .. string.rep(" ", 100)
else
result = result .. str:sub(i, i)
end
end
return result
end