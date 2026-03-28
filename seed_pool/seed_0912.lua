function manipulate_string(str)
local repeated = string.rep(str, 1000000)
local replaced = string.gsub(repeated, "x", "")
local final_string = ""
for i = 1, #replaced do
final_string = final_string .. string.sub(replaced, i, i)
end
return final_string
end