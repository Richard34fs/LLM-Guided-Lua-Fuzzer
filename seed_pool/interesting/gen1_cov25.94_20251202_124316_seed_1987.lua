function generate_code(massive_strings)
    local generated_code = ""  -- Moved before the loop

    for i, massive_string in ipairs(massive_strings) do
        local pattern = string.rep("x", i)  -- Rearranged

        local replaced_string = string.gsub(massive_string, pattern, "")  -- Rearranged

        generated_code = generated_code .. "print('"  .. replaced_string  .. "')"  -- Moved after the variable declarations
    end

    return generated_code
end