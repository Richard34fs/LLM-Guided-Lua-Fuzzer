::start::
local i = 0
while true do
if i == 1 then
goto middle
end
print("i is still", i)
::middle::
i = i + 1
if i > 5 then
break
end
end
print("Finally, i is", i)