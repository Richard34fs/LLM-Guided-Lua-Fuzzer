local function manipulate_string(input_string)
local result = ""
for i = 1, #input_string do
if i % 2 == 0 then
result = result .. string.rep(input_string:sub(i, i), 3)
else
result = result .. input_string:sub(i, i)
end
end
return result
end