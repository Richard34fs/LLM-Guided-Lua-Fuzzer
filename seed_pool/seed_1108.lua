local t = {}
t["foo"] = 42
t["bar"] = "10"
for i = 1, 5 do
t["foo"] = t["foo"] + 1
t["bar"] = t["bar"] .. "10"
end
print(t["foo"])
print(t["bar"])