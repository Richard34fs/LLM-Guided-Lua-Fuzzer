local t = {}
t["foo"] = 42
print(t["foo"])
local s = "5"
s = s + 1 -- This operation will result in a syntax error because you cannot add a number to a string
print(s)
for i = 1, 3 do
    local a = 1
    local b = "2"
    a = a + b -- This operation will also result in a syntax error because you cannot add a number to a string
    print(a)
end