function test(...)
if #arg < 15 then
print("Max 15 lines reached!")
else
test(...)
end
end
test(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)