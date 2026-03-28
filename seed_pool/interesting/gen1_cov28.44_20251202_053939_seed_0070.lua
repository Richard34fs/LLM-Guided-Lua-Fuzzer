local t = {}
t["foo"] = 42
print(t["foo"])
local s = "10" + 2
print(s)
for i = 1, 5 do
    t[i] = i * 2
end
do -- added do-end block
    t["bar"] = true
end -- end of do-end block