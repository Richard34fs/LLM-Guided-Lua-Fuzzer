local t = {}
t["foo"] = "bar"
print(t["foo"])
local a = "10"
local b = 5
print(a + b)
for i = 1, 10 do
    t[i] = i * 2
end
do     -- add block
    for k, v in pairs(t) do
        print(k, v)
    end
end    -- close block
local c = "hello"
print(c)