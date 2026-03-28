function manipulate_string(s)
local s2 = string.rep(s, 3)
local pattern = string.rep(" ", 40)
local s3 = string.gsub(s2, pattern, "")
local result = ""
for i = 1, #s3 do
if i % 2 == 0 then
result = result .. string.sub(s3, i, i)
end
end
return result
end