local function manipulate_string(input_str)
local output_str = ""
for i = 1, 10 do
output_str = output_str .. string.rep(string.gsub(input_str, ".", "a"), i)
end
return output_str
end