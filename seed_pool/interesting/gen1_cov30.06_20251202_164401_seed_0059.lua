function double(n)
    return n * 2
end
t = {}
for i=1,10 do
    t[i] = double(i)
end
s = ""
for k,v in pairs(t) do
    s = s .. tostring(k+v) .. ","
end
print(s)