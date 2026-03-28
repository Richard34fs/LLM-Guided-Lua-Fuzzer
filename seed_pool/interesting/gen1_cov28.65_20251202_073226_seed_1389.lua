local t = {}
for i = 1, 1000 do
    local key = "key" .. i
    t[key] = i
end
local function my_function()
    return 42
end
my_function("extra argument")