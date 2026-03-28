function coroutine_stress(depth)
    if depth > 0 then
        local co = coroutine.create(function()
            coroutine_stress(depth - 1)
        end)
        coroutine.resume(co)
    end
end
local a, b, c = 1, 2, 3
a = b + c
if a == 5 then
    print("a is equal to 5")
else
    print("a is not equal to 5")
end
coroutine_stress(5000)