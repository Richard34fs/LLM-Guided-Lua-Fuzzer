local function manipulate_massive_strings(n)
local result = ""
for i = 1, n do
result = result .. string.rep("!", 10000)
end
result = string.gsub(result, "!!", "")
return result
end