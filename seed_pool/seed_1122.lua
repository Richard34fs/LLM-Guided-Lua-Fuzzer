local function massive_string_manipulation(str)
local result = ""
for i = 1, 1000 do
result = result .. string.rep(str, i) .. "\n"
end
return string.gsub(result, "([^%s]+)", "%1%1")
end