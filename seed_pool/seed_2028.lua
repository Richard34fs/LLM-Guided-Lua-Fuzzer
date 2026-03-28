local t = {}
t["foo"] = 42
print(t["foo"])
local bar = "1337"
bar = bar + 1
print(bar)
local baz = true
for i = 1, 5 do
if baz then
baz = 10
else
baz = false
end
end
print(baz)