t = {a=1}
for i=1,10 do
t[i] = i
t["a"..i] = i*2
end
t.b = "c"
print(t["b"])
print(t[1])
print(t["a10"])