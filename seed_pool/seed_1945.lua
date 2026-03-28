local function generate_code(string)
local repeated = string.rep(string, 10000)
local modified = string.gsub(repeated, "a", "")
local result = ""
for i = 1, #modified do
result = result .. modified:sub(i, i)
end
return result
end