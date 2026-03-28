function generate_lua_code(str)
local result = ""
for i = 1, #str do
result = result .. string.rep(string.char(i), string.byte(str, i))
end
return result
end