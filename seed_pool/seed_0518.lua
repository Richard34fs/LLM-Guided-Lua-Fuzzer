local function massive_string_manipulation(str)
local result = ""
for i = 1, 100 do
result = result .. string.rep(str, i) .. "\n"
end
return string.gsub(result, "a", "b")
end