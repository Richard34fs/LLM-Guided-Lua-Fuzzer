local function manipulate_string(str)
local result = ""
for i = 1, 1000 do
result = result .. string.rep(str, i) .. "\n"
end
return string.gsub(result, "([a-z])", "")
end