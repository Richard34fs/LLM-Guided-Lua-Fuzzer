t = {}
for i=1,10 do
    t[i] = tostring(i) .. i
end
for k,v in pairs(t) do
    print(k,v)
end
local a, b, c = 1, 2, 3
print(a, b, c)
a = 4
b = 5
c = 6
print(a, b, c)
if a < b then
  print("a is less than b")
else
  print("a is not less than b")
end