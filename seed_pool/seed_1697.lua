a = {1, "2", [3] = "4"}
for i = 1, #a do
a[i] = a[i] + 1
a[i] = tonumber(a[i])
end
b = {}
for k, v in pairs(a) do
b[v] = k
end