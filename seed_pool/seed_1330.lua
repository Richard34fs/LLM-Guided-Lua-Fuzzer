t = {}
s = "42"
n = 42
for i=1,10 do
if i % 2 == 0 then
t[s] = n
else
t[n] = s
end
end
print(t["42"])
print(t[42])