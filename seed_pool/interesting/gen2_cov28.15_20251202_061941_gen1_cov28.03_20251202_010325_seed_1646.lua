function string_manipulation(str)
    local result = ""
    local count = 0

    -- Shadowing built-in functions with local versions (closures)
    local rep = function(s, n)
        return string.rep(s, n)
    end

    local gsub = function(s, pattern, replacement)
        return string.gsub(s, pattern, replacement)
    end

    local sub = function(s, i, j)
        return string.sub(s, i, j)
    end

    while count < 100 do
        str = rep(str, 2) -- add a space before "2"
        str = gsub(str, "a", "")
        count = count + 1
    end

    for i = 1, #str do
        result = result .. sub(str, i, i)
    end

    return result
end