local function manipulate_string(s)
local new_string = ""
for i = 1, 100 do
new_string = new_string .. string.rep(s, i) .. "\n"
end
return string.gsub(new_string, "([a-z])", function(c) return string.upper(c) end)
end