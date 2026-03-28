local t = {}
function set_multiple_values(table, key, value1, value2)
    table[key] = value1
    table[value1 + value2] = value2
end
for i = 1, 10 do
  set_multiple_values(t, "hello", 10, 2+3)
  set_multiple_values(t, i, i*2, 5)
end
print(t["hello"])
print(t[5])
print(t[10])