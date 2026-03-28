local t = {} -- Adicionado comentário
t["foo"]    = 42
t[3]        = "bar"
for i = 1, 10 do
    t[i] = i * 2
end
print(t["foo"])
print(t[3])
for k, v in pairs(t) do
    print(k, v)
end