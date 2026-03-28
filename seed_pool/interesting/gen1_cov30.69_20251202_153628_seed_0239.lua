local table = table
local ipairs = ipairs
local print = print
a  = {}
b  = {c=1}
a[b]  = 2
b.c  = b.c + a[b]
for i=1,10 do
  if type(a[b]) == "number" then
    a[b]  = tostring(a[b])
  else
    a[b]  = a[b] + 1
  end
end
print(a[b])