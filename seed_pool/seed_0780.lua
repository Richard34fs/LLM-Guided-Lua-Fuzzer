function manipulate_string(s)
local modified = string.rep(s, 1000)
modified = string.gsub(modified, "abc", "def")
local result = ""
for i = 1, 100 do
result = result .. modified
end
return result
end