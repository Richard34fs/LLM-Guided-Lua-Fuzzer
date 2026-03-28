local function string_manipulation(massive_strings)
local result = ""
for i = 1, #massive_strings do
local str = massive_strings[i]
local repeated_str = string.rep(str, 3)
local modified_str = string.gsub(repeated_str, "a", "")
result = result .. modified_str
end
return result
end