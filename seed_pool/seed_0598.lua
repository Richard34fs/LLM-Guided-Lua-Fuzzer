local t = {}
t["foo"] = 42
t[3] = "bar"
for i=1,10 do
t["foo"] = t["foo"] + 1
t[3] = t[3] .. "baz"
end
print(t["foo"])
print(t[3])