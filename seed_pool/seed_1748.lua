function recursive_call(f, ...)
f(...)
recursive_call(f, ...)
end
function variadic_function(...)
recursive_call(variadic_function, ...)
end