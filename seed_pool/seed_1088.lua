function generate_code(str)
local pattern = "a"
local count = #str
local code = ""
for i = 1, count do
code = code .. string.rep(pattern, i) .. "\n"
end
return code
end