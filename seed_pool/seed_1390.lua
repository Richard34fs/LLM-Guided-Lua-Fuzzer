function generate_code(str)
local result = ""
for i = 1, 100 do
result = result .. string.rep(string.gsub(str, ".", ""), i)
end
return result
end