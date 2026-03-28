local meta = {
    __index = function(t, k) return t end,
    __newindex = function(t, k, v) rawset(t, k, v) end,
    __add = function(a, b) return a end,
    __call = function(...) return ... end
}
local obj = {}
setmetatable(obj, meta)

-- Mutation: Combining different styles of declaration
local a, b, c = 1, 2, 3
local d = 4
local e = 5
d = 6
e = 7

-- Mutation: Interleaving with blocks or expressions
if true then
    local f = 8
end

for i = 1, 10 do
    local g = 9
end

while true do
    local h = 10
    break
end