t = {}
local function foo()
  local t = {}
  t["foo"] = 42
  t[2 + 3] = "bar"
  for k, v in pairs(t) do
    print(k, v)
  end
  return t
end
local bar = foo()