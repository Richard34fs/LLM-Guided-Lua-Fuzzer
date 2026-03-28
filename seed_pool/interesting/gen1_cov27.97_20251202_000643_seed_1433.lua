local t = {}
t["foo"] = "bar"
t[1] = 2
t[t] = true
for i=1,5 do
    t[i], t.x = i*2, i*3    -- Modified line
    print(type(t[i]))
end