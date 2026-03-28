function generate_lua_code(str)
local pattern = "pattern"
local new_string = ""
for i = 1, #str do
if str:sub(i, i) == "a" then
new_string = new_string .. "b"
else
new_string = new_string .. str:sub(i, i)
end
end
return new_string
end