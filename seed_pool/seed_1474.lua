local function manipulate_massive_strings(str)
local new_str = ""
for i = 1, 100 do
new_str = new_str .. string.rep(string.gsub(str, "pattern", ""), i)
end
return new_str
end