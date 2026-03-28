::start::
local x = 0
if x < 10 then
::loop::
x = x + 1
if x % 2 == 0 then
goto loop
end
else
local y = x * 2
print(y)
goto start
end