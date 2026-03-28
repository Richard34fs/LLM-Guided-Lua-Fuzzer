local function generate_code(str)
local num_iterations = math.floor(#str / 2000)
local code = "return '"
for i = 1, num_iterations do
local pattern = string.rep(".", 2000)
str = string.gsub(str, pattern, "")
code = code .. string.rep(pattern, i)
end
code = code .. str .. "'"
return loadstring(code)()
end