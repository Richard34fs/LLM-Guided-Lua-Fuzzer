local t = {a = "1", b = 2}
for i=1,10 do
    pcall(function()
        t[i] = t.a + t.b   -- potential error: arithmetic on strings
        t[i] = t[i] + 1    -- potential error: addition on a number and a string
        t[i] = tonumber(t[i])   -- potential error: invalid conversion to number
    end)
end
print(t[10])