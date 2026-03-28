a = {x=1, y=2}  -- Additional fields added
b = "2"
c = {}
for i=1,10 do
  if type(a[b]) == "number" then
    a[b] = a[b] + 1
  else
    a[b] = 1
  end
  b = tostring(tonumber(b) + 1)
  c[a] = i
end
print(c[{x=1, y=2}])  -- Matching modified value of a