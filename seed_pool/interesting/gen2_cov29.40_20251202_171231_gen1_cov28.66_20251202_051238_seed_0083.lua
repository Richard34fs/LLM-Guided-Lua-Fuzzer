-- Modification in Modules: Add new modules or modify existing ones
package.path = "/home/user/modules/?.lua;" .. package.path
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