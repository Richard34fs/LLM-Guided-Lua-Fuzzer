local t = {}
for i = 1, 1000 do
    local key = tostring(i) .. "a"
    pcall(function()
        t[key] = value
    end)
end