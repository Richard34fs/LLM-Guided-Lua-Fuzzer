local t = {key = "value"}
t[t] = t[t] or {}
for i = 1, 20 do
if type(i) == "number" then
i = tostring(i)
else
i = tonumber(i)
end
t[t][i] = i
end
print(t[t][3])