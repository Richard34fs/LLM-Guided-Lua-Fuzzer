local t = {a=1}
t["a"] = t["a"] + 1
for i=1,10 do
  local s = "a" .. i
  local function f()
    local t = {}
    t[s] = t[s] or 0
    t[s] = t[s] + 1
  end
  f()
  t[s] = t[s] or 0
  t[s] = t[s] + 1
end
print(t.a, t.a1, t.a2)