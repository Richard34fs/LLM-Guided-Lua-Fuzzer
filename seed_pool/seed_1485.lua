::start::
if x == nil then
x = 0
end
if y == nil then
y = 10
end
if x < y then
x = x + 1
goto start
else
z = x * y
end