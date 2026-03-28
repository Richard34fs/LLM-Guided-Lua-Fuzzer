local t = {a=1, b=2}
for i=1,10 do
t[i] = i*2
t[i] = t[i] + t["b"]
t[i] = t[i] * t.a
end
print(t[5])