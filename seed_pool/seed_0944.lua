local function string_manipulation(input_str)
local modified_str = ""
modified_str = modified_str .. string.rep(input_str, 10)
modified_str = string.gsub(modified_str, "abc", "def")
return modified_str
end