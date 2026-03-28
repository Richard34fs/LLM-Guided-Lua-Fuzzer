local pattern = "([A-Za-z0-9])"
local replacement = "%1%1"
local function manipulate_string(str)
local repeated_str = str .. "\n"
for i = 1, 10 do
repeated_str = repeated_str .. string.rep(str, i) .. "\n"
end
local replaced_str = string.gsub(repeated_str, pattern, replacement)
return replaced_str
end