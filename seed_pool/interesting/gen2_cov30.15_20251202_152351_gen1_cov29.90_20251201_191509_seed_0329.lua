local t = setmetatable({}, {__gc = function(t) print("Finalizing table") end})
for i = 1, 1000 do
    local key = tostring(i) .. "a"
    t[key] = i
end
for i = 1, 1000 do
    local key = tostring(i)
    t[key] = i
end