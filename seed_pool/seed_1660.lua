::start::
if condition then
goto start
end
for i = 1, 10 do
if condition then
local x = i * 2
goto start
end
print(i)
end