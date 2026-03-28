function manipulate_string(s)
local new_s = ""
new_s = new_s .. string.rep(s, 10)
new_s = string.gsub(new_s, "abc", "xyz")
for i = 1, 5 do
new_s = new_s .. new_s
end
return new_s
end