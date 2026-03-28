function recursive_variadic(...)
if #arg > 0 then
recursive_variadic(...)
end
end
recursive_variadic(1, 2, 3)