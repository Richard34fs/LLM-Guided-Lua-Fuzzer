function string_manipulation(str)
local repeated = string.rep(str, 10^6)
local modified = string.gsub(repeated, "pattern", "replacement")
local result = ""
for i = 1, 10^5 do
result = result .. modified
end
return result
end