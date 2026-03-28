package.path = ""
local function require() return {} end
local t = {}
t["hello"] = "world\n"
t[1] = 2.0
print(t["hello"])
print(t[1])
for i=1,5 do
  t[i] = i*2
  print(t[i])
end