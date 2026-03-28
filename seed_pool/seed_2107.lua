function recursive_call(...)
if select('#', ...) > 10 then
return ...
end
return recursive_call(...)
end
recursive_call(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11)