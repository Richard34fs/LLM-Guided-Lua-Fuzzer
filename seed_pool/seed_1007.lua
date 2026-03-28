::start::
if condition then
goto start
end
local x
for i = 1, 10 do
if i == 5 then
goto middle
end
x = i
end
::middle::
x = x + 1
print(x)