local pattern = "a"
local replacement = ""
for i = 1, 100 do
pattern = pattern .. "a"
replacement = replacement .. "b"
end
local result = string.gsub("aaaaa", pattern, replacement)
print(result)