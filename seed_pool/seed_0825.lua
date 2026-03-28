local function massive_string_manipulation()
local s = string.rep("x", 10000)
for _ = 1, 10 do
s = string.gsub(s, "x", "")
end
local result = ""
for i = 1, #s do
result = result .. s:sub(i, i)
end
return result
end