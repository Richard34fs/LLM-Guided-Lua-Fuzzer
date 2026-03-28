function manipulate_string(s)
    local result = ""
    for i = 1, #s do
        result = result .. string.rep(string.sub(s, i, i), 3)
    end
    return result
end

-- Mutated Code
function manipulate_string(s)
    local result = "\t" -- Modified string literal
    for i = 1, #s do
        result = result .. string.rep(string.sub(s, i, i), 3)
    end
    return result
end