local function string_manipulation(str)
local result = ""
for i = 1, #str do
result = result .. string.rep(string.gsub(str:sub(i, i), "a", ""), 30)
end
return result
end