local t = {}
t["a"] = "b"
pcall(function() error("deliberate error") end)
print(type(t["a"]))
t[3] = 4
pcall(function() assert(false, "deliberate assertion failure") end)
print(type(t[3]))
for i=1,5 do
    pcall(function() t[i] = i*2 end)
end
print(t["a"])
print(t[3])
for k,v in pairs(t) do
    pcall(function() print(k, v) end)
end