local t = {a = "1", b = "2"}

local function f(t)
  local t = {a = "1", b = "2"}

  local function g()
    t[1], _ = "3", 4
  end

  g()

  local function h()
    _, t["c"] = "3", 4
  end

  h()

  local function i()
    t[1], _ = t[1] + 1, 2
  end

  i()

  while true do
    if type(t[1]) == "number" then
      t[1] = tostring(t[1])
    else
      break
    end
  end

  for k, v in pairs(t) do
    if type(v) == "number" then
      t[k] = tostring(v)
    end
  end

  print(t[1], t.a, t.b, t.c)
end

f(t)