local t = {a  = "10", b  = "20"}
local s = "30"
i  = 1
while i <= 10 do
  t[s]  = i
  t["40"]  = t.a  + t.b
  t.c  = t.d
  s  = t.a
  i  = i  + 1
end