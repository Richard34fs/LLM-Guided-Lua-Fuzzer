local t = {}
t["foo"] = 42
t["bar"] = "baz"
for i=1,5 do
if i % 2 == 0 then
t[i] = true
else
t[i] = {}
end
end
t.xyz = "abc"