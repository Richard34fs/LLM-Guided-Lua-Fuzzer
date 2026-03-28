function coroutine_stress(n)
    local function recurse(i)
        if i > n then
            return
        end

        do
            recurse(i + 1) -- Nested block with a recursive call
        end
    end

    local co = coroutine.create(function()
        recurse(1)
    end)

    local status, err = coroutine.resume(co)
    if not status then
        error(err)
    end
end