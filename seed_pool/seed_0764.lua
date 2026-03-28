local t = {}
t["123"] = 100
t[123] = 200
print(t["123"])
for i = 1, 10 do
t[i] = tostring(i) .. tostring(i)
end
print(t[5])