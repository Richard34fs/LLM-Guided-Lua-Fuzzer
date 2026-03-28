function generate_code(pattern, times)
local code = ""
for i = 1, times do
code = code .. "string.rep('" .. pattern .. "', " .. tostring(i) .. ") .. "
end
code = string.gsub(code, "[^a-zA-Z0-9_]+", "")
return code
end