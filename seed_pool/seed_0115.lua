function generate_code(massive_strings)
local result = {}
for i, string in ipairs(massive_strings) do
local pattern = string:sub(1, 10) .. "+" .. string:sub(-10)
local replaced = string.gsub(string, pattern, "")
local repeated = string.rep(replaced, 100)
result[i] = repeated
end
return table.concat(result, "\n")
end