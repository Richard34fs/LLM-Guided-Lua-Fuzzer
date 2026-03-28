function recursive_variadic(...)
if select("#", ...) < 10 then
return recursive_variadic(print(...), ...)
end
end
recursive_variadic("Hello, world!")