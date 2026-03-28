function coroutine_stress(n)
    local function recurse(i)
        if i < n then
            return recurse(i + 1)
        end
    end

    local co = coroutine.create(function()
        recurse(1)
        return "Done"
    end)

    return co
end