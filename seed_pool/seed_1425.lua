::start::
local a = 10
if a < 5 then
goto start
end
local b = a + 10
for i = 1, 10 do
b = b + i
end
print(b)