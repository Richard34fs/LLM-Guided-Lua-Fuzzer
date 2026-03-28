local function string_manipulation(str)
local result = ""
local replaced = str:gsub(".", "%0%0")
for i = 1, 100 do
result = result .. replaced
end
return result
end