local function generate_code(massive_strings)
local code = ""
for i, string in ipairs(massive_strings) do
local pattern = string:sub(1, 10) .. "%d+" .. string:sub(-10, -1)
local replacement = string.rep("*", #string)
code = code .. ("str = str:gsub('%s', '%s')\n"):format(pattern, replacement)
end
return code
end