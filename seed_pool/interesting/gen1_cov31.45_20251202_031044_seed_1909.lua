function deep_recursion(n)
if n > 0 then
coroutine.yield(deep_recursion(n - 1))
end
return {
field1 = "value1",
field2 = "value2",
nestedTable = {
field3 = "value3",
field4 = "value4"
}
}
end
function coroutine_example()
local co = coroutine.create(function()
return deep_recursion(10000)
end)
print(coroutine.resume(co))
end
coroutine_example()