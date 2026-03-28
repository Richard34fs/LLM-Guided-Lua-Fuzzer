local t = {}
t["\x31\x32\x33"] = 100
t[123] = 200
print(t["\x31\x32\x33"])
for i = 1, 10 do
    t[i] = tostring(i) .. tostring(i)
end
print(t[5])