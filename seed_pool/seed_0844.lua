::start::
a = 2
if a == 2 then
b = 3
::loop::
if b < 10 then
c = b * 2
b = b + 1
goto loop
end
end
print(c)