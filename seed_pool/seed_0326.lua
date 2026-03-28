local t = {}
t[t] = 3
print(t[t])
for i = 1, 5 do
if i == 2 then
i = "two"
end
if i == 3 then
i = true
end
print(i)
end