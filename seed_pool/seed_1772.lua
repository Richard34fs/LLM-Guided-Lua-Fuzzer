local pattern = "abcdefghijklmnopqrstuvwxyz"
local result = ""
for i = 1, 100 do
local count = math.random(10)
local replaced = string.gsub(pattern, "a", "")
result = result .. string.rep(replaced, count)
end
print(result)