t = {}
for i=1,10 do
    t[i] = i*2
end
s = ""
for k,v in pairs(t) do
    s = s .. tostring(k) .. ":" .. tostring(v) .. "\n"
end
print(s)