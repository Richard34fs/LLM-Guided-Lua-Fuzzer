local t = {1, "2", [3] = 3}
print(t[1] + t[3])
for k, v in pairs(t) do
print(type(k), type(v))
end