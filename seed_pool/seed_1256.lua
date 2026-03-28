local function manipulate_string(s)
local new_string = ""
for i = 1, #s do
new_string = new_string .. string.rep(string.gsub(s:sub(i, i), ".", ""), 50000)
end
return new_string
end