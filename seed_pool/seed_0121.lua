local function massive_string_manipulation(s)
local result = ""
s = string.gsub(s, "ab", "cd")
for i = 1, 100 do
result = result .. string.rep(s, 100)
end
return result
end