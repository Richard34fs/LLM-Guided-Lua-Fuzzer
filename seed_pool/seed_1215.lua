local function generate_lua_code(str)
local repeated = string.rep(str, 100000)
local replaced = string.gsub(repeated, "a", "")
local concatenated = ""
for i = 1, #replaced do
concatenated = concatenated .. string.sub(replaced, i, i)
end
return concatenated
end