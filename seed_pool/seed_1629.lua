function manipulate_strings(str, times)
local new_str = string.rep(str, times)
new_str = string.gsub(new_str, "a", "A")
local result = ""
for i = 1, #new_str do
result = result .. new_str:sub(i, i)
end
return result
end