local function manipulate_string(s)
local result = ""
for i = 1, 100 do
local pattern = string.rep("x", i)
s = string.gsub(s, pattern, "")
result = result .. s
end
return result
end