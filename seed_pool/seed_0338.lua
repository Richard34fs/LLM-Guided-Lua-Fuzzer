function manipulate_string(str)
local new_str = ""
for i = 1, 100 do
new_str = new_str .. string.rep(" ", i) .. "\n"
end
return string.gsub(new_str, "pattern", "replacement")
end