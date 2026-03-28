::start::
if not initialized then
initialized = true
goto start
end
for i = 1, 10 do
if i % 2 == 0 then
print("Even number:", i)
else
print("Odd number:", i)
end
end