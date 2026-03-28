a = "1"
for i=1,10 do
a = a + 1
b = {["key"] = a}
c = b["key"]
print(c)
end