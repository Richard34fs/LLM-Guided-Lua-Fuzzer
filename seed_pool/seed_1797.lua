local function manipulate_string(s)
local output = ""
local pattern = "a"
for i = 1, #s do
if i % 2 == 0 then
pattern = string.rep(pattern, 2)
else
pattern = string.rep(pattern, 1)
end
s = string.gsub(s, pattern, "")
end
return output
end