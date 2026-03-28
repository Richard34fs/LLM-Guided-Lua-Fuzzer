::start::
if condition then
goto start
end
local x = 10
::loop::
x = x + 1
if x < 20 then
goto loop
end
print(x)