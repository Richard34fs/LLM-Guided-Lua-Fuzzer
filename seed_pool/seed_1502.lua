local pattern = "x"
local n = 1000000
local replacement = ""
local result = string.rep(pattern, n)
for i = 1, n do
result = string.gsub(result, pattern, replacement)
end
print(result)