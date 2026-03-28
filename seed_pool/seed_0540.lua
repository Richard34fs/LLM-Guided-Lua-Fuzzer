local function massive_string_manipulation(str)
local repeated = string.rep(str, 100000)
local replaced = string.gsub(repeated, "a", "b")
local result = ""
for i = 1, #replaced do
result = result .. string.sub(replaced, i, i)
end
return result
end