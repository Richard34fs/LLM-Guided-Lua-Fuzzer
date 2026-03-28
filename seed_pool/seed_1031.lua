function variadic(...)
if #arg > 0 then
variadic(...)
end
end
variadic(1, 2, 3, 4, 5)