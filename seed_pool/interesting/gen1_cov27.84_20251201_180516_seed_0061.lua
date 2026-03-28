local t = {}
for i=1,5 do
  if i % 2 == 0 then
    t[i] = true
  else
    t[i] = nil
  end
end
t.xyz = "abc"
return t