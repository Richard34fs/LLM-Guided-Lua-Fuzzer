local t = {}
t["foo"] = 42
t[1] = "bar"
local x = t["foo"] + #t[1]
while x > 0 do
  local function f()
    local t = {}
    t[x] = x
  end
  f()
  x = x - 1
end
print(type(t))