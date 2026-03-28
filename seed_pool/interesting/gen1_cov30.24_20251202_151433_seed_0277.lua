function coroutine_stress(n)
    if n == 0 then
        return
    end

    local co = coroutine.create(function()
        coroutine_stress(n - 1)    -- inserted extra argument 'nil'
    end)

    coroutine.resume(co, nil)      -- removed an argument
end

coroutine_stress(10000)