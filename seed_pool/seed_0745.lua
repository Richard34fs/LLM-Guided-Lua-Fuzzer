local t = {x = 20}
t["y"] = "30"
t[4] = 40
for k, v in pairs(t) do
print(k, v)
end
print(t.x + t["y"])
print(t[4] + t.x)