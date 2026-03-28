function test_stack(...)
if select('#', ...) > 0 then
return test_stack(...)
end
return true
end