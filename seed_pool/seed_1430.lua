local t = {}
t["foo"] = "bar"
print(t["foo"])
local n = #t
print(n)
for i = 1, 5 do
t[i] = i * 2
end
print(#t)
local s = "10" + 2
print(s)