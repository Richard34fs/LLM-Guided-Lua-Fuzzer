local function string_manipulation(input_string)
local result = ""
for i = 1, 10 do
result = result .. string.rep(input_string, i) .. "\n"
end
return string.gsub(result, "[aeiou]", "*")
end