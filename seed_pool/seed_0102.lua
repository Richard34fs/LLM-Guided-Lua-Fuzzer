local function generate_code(massive_strings)
local generated_code = ""
for i = 1, #massive_strings do
local string = massive_strings[i]
generated_code = generated_code .. "string.rep('" .. string .. "', 3)"
if i < #massive_strings then
generated_code = generated_code .. " .. "
end
end
return generated_code
end