local function generate_code(input)
local pattern = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
local count = #input
local result = ""
for i = 1, count do
result = result .. string.rep(pattern, i) .. "\n"
end
return result
end