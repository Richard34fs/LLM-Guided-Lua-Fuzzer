local function coroutine_generator(num_rows, num_columns)
    local row = ""
    local i = 1
    return function()
        if i > num_rows then
            return nil
        end
        row = string.rep("x", math.random(10, 20))
        i = i + 1
        return row
    end
end