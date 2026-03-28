local function generate_code(str)
local count = 10000
local code = ""
for i = 1, count do
code = code .. string.rep(str, i) .. "\n"
end
return code
end