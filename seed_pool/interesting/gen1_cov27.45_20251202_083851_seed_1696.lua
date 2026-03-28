a = { __metatable__ = {} }  -- Add metatable to table a
b = "3"
c = 0
while c < 10 do
  a[b] = c
  b = b + 1
  c = c + 1
end
print(a["4"])
print(a["5"])