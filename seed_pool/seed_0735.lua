local function generate_code(input)
local pattern = "pattern"
local replacement = "replacement"
local count = 1000
local code = ""
for i = 1, count do
code = code .. string.rep(input, i) .. "\n"
end
code = code .. "local result = string.gsub('" .. input .. "', '" .. pattern .. "', '" .. replacement .. "')\n"
return code
end