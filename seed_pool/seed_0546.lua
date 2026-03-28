local t = {}
t["2" + 3] = "four"
print(t[5])
for i = 1, 10 do
t[i] = i
end
print(t["10"])