local table = {insert=table.insert, ipairs=ipairs, print=print}  -- shadow built-in functions
local t = {a=1, b=2}
for i=1,10 do
t[i] = i*2
t[i] = t[i] + t["b"]
t[i] = t[i] * t.a
end
table.print(t[5])