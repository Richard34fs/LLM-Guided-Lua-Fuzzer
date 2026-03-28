local t = {}
t["10"] = 10
t[10] = 10
t[10] = "10"
for i=1,10 do
    local _ = (t["1"] or 0) + 1
    t["1"] = _
end
print(t[1])