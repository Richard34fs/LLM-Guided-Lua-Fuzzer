local t = {}
t["a"] = "b"
print(type(t["a"]))  -- "string"
t["a"] = 123
print(type(t["a"]))  -- "number"
for i = 1, 5 do
    t[i] = {}
    print(type(t[i]))  -- "table"
end