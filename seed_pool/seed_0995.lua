local t = {a = 2}
for i = 1, 10 do
t[i] = i + "1"
end
t["b"] = "3"
print(t["a"] + t[5])