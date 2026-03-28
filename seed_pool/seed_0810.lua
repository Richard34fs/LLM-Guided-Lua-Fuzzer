local t = {}
t["foo"] = 42
t["bar"] = "42"
for i = 1, 5 do
if i % 2 == 0 then
t["foo"] = t["foo"] + 1
else
t["foo"] = t["foo"] .. ""
end
end
print(type(t["foo"]))