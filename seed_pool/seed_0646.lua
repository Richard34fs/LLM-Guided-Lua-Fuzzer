function test(...)
if select('#', ...) > 0 then
test(select(2, ...))
end
end
test(1, 2, 3, 4, 5)