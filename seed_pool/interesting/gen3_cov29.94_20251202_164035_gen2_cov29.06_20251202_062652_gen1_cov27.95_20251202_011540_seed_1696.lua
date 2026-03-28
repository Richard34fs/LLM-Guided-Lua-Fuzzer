local code = [[
a = {}
local b = "3"
c = 0
while c < 10 do
    a[b] = c
    b = b + 1
    c = c + 1
end
table.insert(a, "4", 10) -- Add this line
print(a["4"])
print(a["5"])
]]
load(code)()