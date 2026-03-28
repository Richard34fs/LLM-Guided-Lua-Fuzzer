function variadic_recursion(f, ...)
if ... then
f(...)
end
end
variadic_recursion(print, 1, 2, 3)
variadic_recursion(variadic_recursion, print, 4, 5, 6)