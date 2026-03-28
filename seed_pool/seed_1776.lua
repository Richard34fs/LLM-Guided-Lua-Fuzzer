local t = {}
t["foo"] = 42
t["bar"] = "baz"
print(t["foo"] + #t["bar"])
for i = 1, 10 do
local temp = t["foo"]
t["foo"] = t["bar"]
t["bar"] = temp
end
print(t["foo"] .. t["bar"])