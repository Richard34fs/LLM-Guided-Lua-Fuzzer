a = "1"
i = 1
while i <= 10 do
    local function f()
        a = a + 1
        b = {["key"] = a}
        c = b["key"]
        print(c)
    end
    f()
    i = i + 1
end