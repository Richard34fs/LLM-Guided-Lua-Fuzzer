function variadic_stack(a, b, ...)
if ... then
return variadic_stack(a, b, ...)
else
return a + b
end
end