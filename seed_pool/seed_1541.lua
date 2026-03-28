local t = {foo = "bar"}
t[2 + 3] = 42
for _ = 1, 10 do
t = {}
t["foo"] = 42
end
print(t.foo)