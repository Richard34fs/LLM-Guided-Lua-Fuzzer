local function manipulate_string(s)
local result = ""
for i = 1, 10 do
s = string.rep(s, 3)
s = string.gsub(s, "a", "")
result = result .. s
end
return result
end