function variadic_test(...)
if select('#', ...) > 0 then
return variadic_test(...)
end
return true
end