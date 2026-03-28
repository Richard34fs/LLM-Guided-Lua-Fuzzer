function test_stack(...)
if select('#', ...) > 0 then
return test_stack(select(2, ...))
else
return true
end
end