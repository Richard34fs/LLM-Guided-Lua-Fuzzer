local t = {x = 20}
t["y"] = "30"
t[4] = 40
for k, v in pairs(t) do
print(k, v)
end
print(t.x + t["y"])
print(t[4] + t.x)
local function closure()
    local x = 10
    print(x)
end
function local_function()
    local y = "20"
    print(y)
end
local anonymous_function = function()
    local z = 30
    print(z)
end
closure()
local_function()
anonymous_function()
local x = 10
local function closure()
    print(x)
end
closure()