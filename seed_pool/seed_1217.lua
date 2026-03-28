t = {1, "2", [3] = 4}
print(t[1] + t[3])
for i = 1, #t do
t[i] = type(t[i])
end
print(t[1], t[2], t[3])