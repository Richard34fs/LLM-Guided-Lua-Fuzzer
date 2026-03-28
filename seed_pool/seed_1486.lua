t = {}
s = "0"
for i = 1, 10 do
t[s] = i
s = tostring(tonumber(s) + 1)
end
print(t["0"])