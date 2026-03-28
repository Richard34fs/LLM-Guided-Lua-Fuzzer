local function string_manipulation(str)
local result = ""
for i = 1, #str do
if i % 2 == 0 then
result = result .. str:sub(i, i)
end
end
return result
end