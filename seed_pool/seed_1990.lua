local pattern = "abcdefghijklmnopqrstuvwxyz"
local result = ""
for i = 1, 100 do
result = result .. string.rep(string.gsub(pattern, ".", ""), i)
end
print(result)