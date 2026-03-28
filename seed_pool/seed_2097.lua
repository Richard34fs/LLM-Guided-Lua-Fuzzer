local function massive_string_manipulation(s)
local result = ""
local repeated_s = string.rep(s, 100)
local modified_s = string.gsub(repeated_s, "aaa", "")
for i = 1, #modified_s do
result = result .. modified_s:sub(i, i)
end
return result
end