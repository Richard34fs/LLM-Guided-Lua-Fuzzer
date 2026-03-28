function generate_code(massive_strings)
    local generated_code = ""
    for i = 1, #massive_strings do
        local massive_string = massive_strings[i]
        local pattern = string.rep("pattern", #massive_string)
        massive_string = string.gsub(massive_string, pattern, "")
        generated_code = generated_code .. massive_string
    end
    return generated_code
end