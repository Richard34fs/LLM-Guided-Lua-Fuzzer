t = {1}
t["a"] = t
print(type(t))
print(type(t["a"]))
print(t[1] + 1)
for i in pairs(t) do -- The loop has been changed from for to pairs
  print(type(t[i]))
end