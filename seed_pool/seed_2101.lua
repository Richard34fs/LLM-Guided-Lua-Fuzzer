local t = {a=1, b=2}
for i=1,10 do
local key = i%2==0 and "a" or "b"
if i <= 5 then
print(t[key] + i)
else
print(t[key] .. i)
end
end