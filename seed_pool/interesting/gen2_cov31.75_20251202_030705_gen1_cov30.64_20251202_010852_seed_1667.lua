local t = {x=1}
local s = "2"
for i = 1, 10 do
    pcall(function()
        if i == 5 then
            t[s] = i     -- Inserted error injection
            s = s + 1    -- Inserted error injection
            t.x = t.x + 1    -- Inserted error injection
        end
    end)
end
print(t[s], t.x)