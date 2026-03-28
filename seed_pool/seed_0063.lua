function generate_code(massive_strings)
local code = ""
for _, str in ipairs(massive_strings) do
local num_repetitions = math.ceil(#str / 200)
local pattern = string.rep("🐍", #str)
local replacement = string.rep(str, num_repetitions)
code = code .. "local new_str = string.gsub('" .. pattern .. "', '" .. pattern .. "', '" .. replacement .. "')\n"
end
return code
end