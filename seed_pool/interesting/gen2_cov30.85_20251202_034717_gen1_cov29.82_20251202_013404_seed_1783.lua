local t = {
    a = 1,
    b = "string",
    c = function() print("hello") end,
    d = {
        e = 2,
        f = false,
        g = {
            h = "nested table"
        }
    }
}
for i=1,10 do
    local function f(i)
        t[i] = i
        t["a"..i] = i*2
        t.d[i] = i*3
        t.d["a"..i] = i*4
    end
    f(i)
end
print(t["a1"] + t[1])