local function create_churner()
    local churner = {}
    setmetatable(churner, {__mode = "k"})

    return function()
        local t = {}
        churner[t] = true

        return t, nil  -- Mutated code: returning multiple values in a single expression
    end
end