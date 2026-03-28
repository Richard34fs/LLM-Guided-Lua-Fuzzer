local t = {}
for i = 1, 1000 do
    local key = tostring(i) .. "a"
    t[key] = i
end
for i = 1, 1000 do
    local key = tostring(i) .. "b"
    t[key] = i
end
local x = 5
y = 6
z, w = 7, 8
local a, b, c = 9, 10, 11
-- Mutation: deliberate call to error() inside pcall-catchable block
local status, err = pcall(function()
    local invalid_key = "invalid"
    local value = t[invalid_key] -- this will cause an error
    print(value)
end)
if not status then
    error(err)
end