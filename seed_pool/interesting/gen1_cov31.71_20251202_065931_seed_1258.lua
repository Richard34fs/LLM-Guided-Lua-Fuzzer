local t = {}
t["abc"] = "def"
print(t["abc"])
local a = "123" + 10
for i = 1, 10 do
    local a = 123
    a = "456"
    pcall(function()
        error("deliberate error")
    end)
    pcall(function()
        assert(false, "deliberate assertion failure")
    end)
    pcall(function()
        t["invalid"] = "index"  -- deliberate invalid index
    end)
end