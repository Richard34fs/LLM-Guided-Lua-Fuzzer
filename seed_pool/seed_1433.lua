local t = {}
t["foo"] = "bar"
t[1] = 2
t[t] = true
for i=1,5 do
t[i] = i*2
print(type(t[i]))
end