local function string_manipulation(massive_string)
local result = ""
local count = 0
while count < 3 do
result = result .. string.rep(massive_string, 2^count)
massive_string = string.gsub(massive_string, "x", "")
count = count + 1
end
return result
end