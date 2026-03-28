local function manipulate_string(input)
local result = ""
result = result .. string.rep(input, 100)
result = string.gsub(result, "a", "b")
return result
end