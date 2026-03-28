local t = {}
t["foo"] = "bar"
print(t["foo"])
t[1] = 2
print(t[1])
for i=1,3 do
  local function f()
    t[i] = t[i] or 0
  end
  f()
  t[i] = t[i] + 1
end
print(t[1], t[2], t[3])