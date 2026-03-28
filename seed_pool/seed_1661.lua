function manipulate_string(str)
local repeated = string.rep(str, 1000)
local replaced = string.gsub(repeated, "abc", "def")
local result = ""
for i = 1, #replaced do
result = result .. string.sub(replaced, i, i)
end
return result
end