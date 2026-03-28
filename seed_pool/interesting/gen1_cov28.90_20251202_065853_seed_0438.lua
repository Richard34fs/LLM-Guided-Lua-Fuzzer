a = "1"
b = {}
for i=1,10 do
  a = a + 1
  b[a] = 1
  a = a * 2
end
print(a)
print(#b)

-- Mutated code using CONTROLE_ALTERNATIVO strategy
a = "1"
b = {}
i = 0
while i < 10 do
  i = i + 1
  a = a + 1
  b[a] = 1
  a = a * 2
end
print(a)
print(#b)