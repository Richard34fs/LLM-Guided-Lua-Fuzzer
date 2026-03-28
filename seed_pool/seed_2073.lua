::start::
local a = 10
if a < 5 then
goto start
end
local b = a + 1
for i = 1, 10 do
local c = i * 2
if c > 10 then
break
end
end
print(b, c)