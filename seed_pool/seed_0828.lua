::start::
if x == nil then
x = 0
else
goto continue
end
::continue::
x = x + 1
if x < 10 then
goto start
end