a = "1"
b = {}
for i=1,10 do
a = a + 1
b[a] = i
end
print(b["2"])
print(b["3"])