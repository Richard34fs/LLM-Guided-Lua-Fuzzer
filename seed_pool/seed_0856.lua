local function generate_code(n)
local pattern = "a"
local code = ""
for i = 1, n do
pattern = string.rep(pattern, i) .. "a"
code = code .. string.gsub("string", pattern, "")
end
return code
end