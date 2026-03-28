local t = {}
for i = 1, 1000 do
    local key = tostring(i) .. "a"
    t[key] = i
end
for i = 1, 1000 do
    local key = i
    pcall(function()
        error("Error!")
    end)
    t[key] = i
end