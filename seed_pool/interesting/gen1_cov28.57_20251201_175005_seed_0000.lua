local t = {}
t["foo"] = "bar"
t[1] = 2
t[t] = true
for k, v in pairs(t) do
    print(type(k), type(v))
end
local t = {
  foo = "bar",
  [1] = 2,
  [t] = true
}
local function f()
  local t = {foo = "bar"}
  local k, v = next(t)
  print(type(k), type(v))
end
f()