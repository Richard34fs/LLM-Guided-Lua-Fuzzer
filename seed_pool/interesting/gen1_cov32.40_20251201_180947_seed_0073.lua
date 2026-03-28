local t = {}
t[1] = "one"
t["one"] = 1
print(t[1])
print(t["one"])
local a, b = 1, "2"
print(a + b)
for i = 1, 3 do
t[i] = i
end
print(t["one"])
local function fibonacci()
    local a, b = 0, 1
    return function()
        a, b = b, a + b
        return a
    end
end
local f = fibonacci()
for _ = 1, 5 do
    print(f())
end
t[4] = "four"
print(t[4])
print("1" .. 2)
for i in pairs(t) do
    print(t[i])
end