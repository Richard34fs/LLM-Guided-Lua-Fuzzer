local t = {}
t[1] = "1"
for i = 2, 10 do
    t[i] = t[i - 1] + 1
end
print(t[10])
function f()
  local t = {}
  t[1] = {}
  for i = 2, 10 do
      t[i] = i
  end
  print(t[10])

  local function g()
    local t = {}
    t[1] = "1"
    for i = 2, 10 do
        t[i] = t[i - 1] + 1
    end
    print(t[10])
  end

  g()
end

f()