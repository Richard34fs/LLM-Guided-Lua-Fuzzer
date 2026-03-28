function manipulate_string(str)
local new_str = ""
for i = 1, 1000 do
new_str = new_str .. string.rep(str, i) .. "\n"
end
return string.gsub(new_str, "(%a)(%a%a)", "%2%1")
end