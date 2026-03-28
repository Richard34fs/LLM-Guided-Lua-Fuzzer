local t = {}
t[1] = "one"
t["two"] = 2
print(t[1], t["two"])
local s = "3" + 4
print(s)
for i = 1, 3 do
    local x = i * 2
    if type(x) == "number" then
        print(x)
    else
        print(tonumber(x))
    end
end