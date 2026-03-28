function string_manipulation(str)
local result = ""
for i = 1, 100 do
result = result .. string.rep(string.gsub(str, "%w+", ""), i)
end
return result
end