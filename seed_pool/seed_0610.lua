local function generate_lua_code(str)
local pattern = "a"
local num_replications = 100
local generated_code = ""
for i = 1, num_replications do
generated_code = generated_code .. string.rep(str, i) .. "\n"
end
return generated_code
end