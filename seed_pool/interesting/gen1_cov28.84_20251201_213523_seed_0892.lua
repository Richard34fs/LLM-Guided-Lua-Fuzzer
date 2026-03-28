a = {}
a["foo"] = "bar"
a[2 + 3] = 10
for i = 1, 10 do
  a[i] = i
end
code = [[
  print(a["foo"])
  print(a[5])
  print(a[1])
]]
func = load(code)
if func then
  func()
end