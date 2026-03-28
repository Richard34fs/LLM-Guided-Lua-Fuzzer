local t = {1, "2", [3] = 4}
for i = 1, 3 do
t[i] = t[i] + 1
t[i + 1] = t[i] * 2
end
print(t[1], t[2], t[3])