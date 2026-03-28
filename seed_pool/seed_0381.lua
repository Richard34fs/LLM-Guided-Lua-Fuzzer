local function generate_lua_code(str)
local output = ""
local pattern = "([%w%s])\1+"
for i = 1, string.len(str) do
local char = string.sub(str, i, i)
local count = string.match(str, pattern):len()
if count > 1 then
output = output .. "string.rep('" .. char .. "', " .. count .. ") .. "
else
output = output .. "'" .. char .. "' .. "
end
end
return output:sub(1, -4)
end