local function massive_string_manipulation(str)
local result = ""
local replaced_str = string.gsub(str, "pattern", "")
for i = 1, 1000 do
result = result .. string.rep(replaced_str, 1000)
end
return result
end