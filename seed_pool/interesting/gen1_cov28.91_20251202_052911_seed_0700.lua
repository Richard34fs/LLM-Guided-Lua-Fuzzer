local t = {}
t["10"] = "ten"
print(t[10])  -- The value at index 10 is now "ten"
local a = 3
a, _ = a + "4", 5  -- The second return value is discarded
print(a)  -- The result of the expression "a + "4"" is now 7
for i = 1, 5 do
  i = i + 2.5  -- The decimal part of 2.5 is truncated
end
print(i)  -- The value of i remains unchanged