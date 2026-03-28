function coroutine_stress(n)
    local function f(i)
        if i > n then
            return i
        else
            return f(f(i + 1))
        end
    end
    local co = setmetatable({ f(1) }, { __call = f })
    return co
end