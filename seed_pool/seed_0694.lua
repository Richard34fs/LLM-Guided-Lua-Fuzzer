local function manipulate_string(s)
local result = ""
for i = 1, 100 do
result = result .. string.rep(s, i) .. "\n"
end
return string.gsub(result, "(*)", "")
end