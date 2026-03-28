local t = {a = "1", b = "2"}
local function f(t)
  local t = {a = "1", b = "2"}
  local function g()
    t[1] = "3"
  end
  g()
  local function h()
    t["c"] = 4
  end
  h()
  local function i()
    t[1] = t[1] + 1
  end
  i()
  for k, v in pairs(t) do
    if type(v) == "number" then
      t[k] = tostring(v)
    end
  end
  print(t[1], t.a, t.b, t.c)
end
f(t)