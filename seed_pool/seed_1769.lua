::start::
if condition then
goto start
end
for i = 1, 10 do
if i % 2 == 0 then
local x = i * 2
else
local y = i ^ 2
end
print(x or y)
end