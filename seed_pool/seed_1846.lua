function manipulate_string(str)
local new_str = ""
local num_iterations = #str / 2
for i = 1, num_iterations do
new_str = new_str .. string.rep(str, i) .. "\n"
end
return new_str
end