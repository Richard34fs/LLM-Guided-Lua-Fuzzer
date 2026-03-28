local t = {}
t["foo"] = 42
t[1] = "bar"
local x = t["foo"] + #t[1]
for i = 1, x do
  local function f()
    local t = {}
    t[i] = i
  end
  f()
end
print(type(t))