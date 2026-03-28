local function manipulate_massive_strings()
    local output = ""
    for i = 1, 100 do
        output = output .. string.rep("x", 1000) .. "\n" -- Insert comment
    end

    output = string.gsub(output, "xxxxxx", "") -- Remove spaces and line breaks
    return output
end