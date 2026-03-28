local t = {}
t["foo"] = 42
t[4] = "bar"
print(t["foo"] + #t[4])