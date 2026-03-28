function recursive_variadic(...)
if #arg > 0 then
print(unpack(arg))
recursive_variadic(...)
end
end
recursive_variadic(1, 2, 3, 4, 5)