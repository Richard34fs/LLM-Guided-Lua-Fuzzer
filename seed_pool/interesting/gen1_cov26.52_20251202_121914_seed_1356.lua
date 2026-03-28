function generate_code(massive_strings)
    local a, b, c = 1, 2, 3  -- multiple declarations
    for _, str in ipairs(massive_strings) do
        local pattern = string.rep("%", #str)
        local replaced = string.gsub(str, pattern, "")
        code = code .. replaced  -- interleaved with other statements
    end

    return code
end