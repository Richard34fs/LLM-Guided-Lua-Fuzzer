::start::
local x = 10
if x == 10 then
print("x is 10")
::loop::
if x > 0 then
x = x - 1
goto loop
end
else
print("x is not 10")
end