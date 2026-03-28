::start::
if condition then
goto start
end
for i = 1, 10 do
if i == 5 then
break
end
end
local x
repeat
x = x or 0
x = x + 1
until x > 10