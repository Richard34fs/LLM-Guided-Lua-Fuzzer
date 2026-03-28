local pattern = "abc"
local replacement = "xyz"
local count = 10
local result = ""
for i = 1, count do
local modified_pattern = string.gsub(pattern, "a", i)
result = result .. string.rep(modified_pattern, i) .. replacement
end
print(result)