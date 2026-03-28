local t = { "a", "b" }
local count = 0
while true do
if count == 2 then
break
end
local key = {}
local value = t[count + 1]
t[key] = value
count = count + 1
end
print(t["a"])