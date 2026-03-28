a = "1"
for i=1,10 do
    local function f()
        a = a + 1
        b = {["key"] = a}
        c = b["key"]
        print(c)
    end
    f()
end