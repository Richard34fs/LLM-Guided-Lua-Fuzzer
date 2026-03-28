function manipulate_string(s)
local result = ""
for i = 1, 20 do
s = string.rep(s, i) .. string.gsub(s, ".", "")
result = result .. s
end
return result
end