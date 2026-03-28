local t = {}
t["foo"] = "bar"
t[1] = 2
for i = 1, 5 do
  if i % 2 == 0 then
    t[i] = true
  else
    t[i] = "string" .. i
  end
end
function closure()
  local foo = t
  print(foo[1])
end
closure()