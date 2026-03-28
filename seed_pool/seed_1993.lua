function f(...)
if select('#', ...) > 0 then
return f(...)
end
print("Stack limit reached!")
end
f()