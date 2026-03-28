local t = {}
t[1] = "one"
t["one"] = 1
for i = 1, 3 do
if type(i) == "number" then
print(i + 1)
else
print(i .. "1")
end
end