function coroutine_func(n)
    if n > 0 then
        local co = coroutine.create(function()
            return coroutine_func(n - 1)
        end)
        local status, value = coroutine.resume(co)
        if status then
            return value + n
        else
            error(value)
        end
    else
        return {
            0, -- added a field
            ["a"] = "b", -- added another field
            ["nested_table"] = { -- added a nested table
                c = "d"
            }
        }
    end
end