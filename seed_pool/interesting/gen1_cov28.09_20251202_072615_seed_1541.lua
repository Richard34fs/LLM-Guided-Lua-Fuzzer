local t = {foo = "bar"}
t[2 + 3] = 42
local _ = 1
while _ <= 10 do
  t = {}
  t["foo"] = 42
  _ = _ + 1
end
print(t.foo)