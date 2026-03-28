local t = {a  =  2}
local s = "3"
for i  =   1,  10 do
  t[s] = t[s] or  0
  t[s] = t[s] + i
  s = t.a
end
print(t[s])