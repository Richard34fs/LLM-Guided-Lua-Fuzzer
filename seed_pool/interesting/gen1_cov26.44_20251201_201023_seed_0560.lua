local function manipulate_string(str)
    local a, b, c = 1, 2, 3  -- Mixed declaration
    str = string.rep(str, 10)
    str = string.gsub(str, "a", "")
    for i = 1, #str do
        str = str .. str:sub(i, i)  -- Interleaved with expression
    end

    return str
end