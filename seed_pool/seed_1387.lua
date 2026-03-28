local function manipulate_string(str)
local result = ""
for i = 1, 100 do
result = result .. string.rep(str, i) .. "\n"
end
return result
end