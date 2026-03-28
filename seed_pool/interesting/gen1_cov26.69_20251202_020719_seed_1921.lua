function coroutine_stress_test(n)
    local function recurse(i)
        if i > 0 then
            return recurse(i - 1)
        end
    end

    local co = coroutine.create(function()
        recurse(n)
    end)

    assert(coroutine.resume(co))
end