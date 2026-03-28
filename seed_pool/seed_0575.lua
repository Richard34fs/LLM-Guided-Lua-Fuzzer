t = {}
i = 0
while i < 10 do
t[i] = tostring(i) .. "foo"
i = i + 1
end
for k, v in pairs(t) do
print(k, v)
end