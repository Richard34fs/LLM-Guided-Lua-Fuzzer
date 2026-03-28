local function manipulate_string(s)
local pattern = "A"
local count = 0
for i = 1, #s do
if string.match(s, pattern, i, true) then
count = count + 1
end
end
return string.rep("B", count) .. string.gsub(s, pattern, "C")
end