local t = {}
t["123"] = "hello"
print(type(t["123"]))
print(tonumber(t["123"]))
for i = 1, #t do
t[i] = 10
end
print(t[1])