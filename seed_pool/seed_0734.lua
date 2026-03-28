local function generate_code(str, num_iterations)
local code = ""
for i = 1, num_iterations do
code = code .. "str = string.rep(str, " .. i .. ") .. string.gsub(str, '" .. string.rep("?", i) .. "', '')\n"
end
return code
end