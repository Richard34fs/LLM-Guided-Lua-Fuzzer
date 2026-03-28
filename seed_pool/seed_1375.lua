function generate_code(str)
local pattern = string.rep(str, 10000)
local new_str = ""
for i = 1, 1000 do
new_str = new_str .. string.gsub(pattern, "a", "b")
end
return new_str
end