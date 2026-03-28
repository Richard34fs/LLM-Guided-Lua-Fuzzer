-- Metatable mutation: Add new fields or modify existing fields in metatables
local t = {}
t["foo"] = 42
print(t["foo"])
local s = "5"
s = s + 1
print(s)
for i = 1, 3 do
local a = 1
local b = "2"
a = a + b
print(a)
end