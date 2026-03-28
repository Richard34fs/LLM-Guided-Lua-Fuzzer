function manipulate_string(s)
local s = string.rep(s, 10^6)
s = string.gsub(s, 'a', 'b')
local result = ""
for i = 1, #s do
result = result .. s:sub(i, i)
end
return result
end