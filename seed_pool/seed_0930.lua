local function generate_code(str)
local num_iterations = math.ceil(#str / 4096)
local result = ""
for i = 1, num_iterations do
local chunk = string.sub(str, (i - 1) * 4096 + 1, i * 4096)
result = result .. string.rep(chunk, 1024)
end
return result
end