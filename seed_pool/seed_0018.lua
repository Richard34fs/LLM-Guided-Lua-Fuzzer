local function manipulate_string(str)
local modified = ""
for i = 1, 100 do
modified = modified .. string.rep(str, i) .. "\n"
end
return string.gsub(modified, "a", "")
end