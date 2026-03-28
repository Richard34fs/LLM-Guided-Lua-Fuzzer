local t = {a=1}
for i=1,10 do
  t[i] = i
  t["a"..i] = i*2
end
print(t["a1"] + t[1])
do
  local t = {a=1}
  for i=1,10 do
    t[i] = i
    t["a"..i] = i*2
  end
  print(t["a1"] + t[1])
end