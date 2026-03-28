::start::
local a = 10
if a < 5 then
::loop::
local b = a * 2
if b > 10 then
goto loop
end
else
local c = a + 5
if c < 15 then
goto start
end
end