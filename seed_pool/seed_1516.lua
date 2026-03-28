::start::
local x = 3
if x == 0 then
goto start
end
for i = 1, x do
local y = i * 2
if y % 4 == 0 then
print("y is divisible by 4")
goto continue
end
::continue::
print("y is not divisible by 4")
end