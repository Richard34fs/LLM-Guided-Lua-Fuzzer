local t = {}
t["foo"], t["bar"] = 42, "hello" -- substituiu a expressão simples por uma chamada que retorna múltiplos valores
for i = 1, 5 do
  t[i] = i * 2
end
print(t["foo"] + t[3])