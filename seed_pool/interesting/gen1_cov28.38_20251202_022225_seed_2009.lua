function coroutine_stress(n)
    if n <= 0 then
        return 1
    end

    do -- added do/end block
        local co = coroutine.create(function()
            return coroutine_stress(n - 1)
        end)

        return coroutine.yield(co)
    end
end

local main_co = coroutine.create(function()
    print(coroutine_stress(5))
end)

coroutine.resume(main_co)