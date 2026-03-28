function manipulate_string(s)
local result = ""
local count = string.rep("*", 1000)
for i = 1, 100 do
s = string.gsub(s, count, "")
result = result .. s
end
return result
end