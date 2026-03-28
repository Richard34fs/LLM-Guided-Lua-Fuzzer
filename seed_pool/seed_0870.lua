t = {}
for i=1,10 do
t[i] = i
end
for k,v in pairs(t) do
t[k] = v + "1"
end
i = 1
while i <= #t do
t[i] = t[i] + 1
i = i + 1
end