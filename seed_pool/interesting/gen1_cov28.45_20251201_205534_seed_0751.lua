local t = {}
local function foo() end
t["foo"] = 42
t[3] = "bar"
print(t["foo"] + #t[3])
for i = 1, 5 do
t[i] = i * 2
end