local function generate_lua_code(str)
local parts = {}
for i = 1, #str do
local char = str:sub(i, i)
table.insert(parts, string.rep(char, i))
end
return table.concat(parts, "")
end