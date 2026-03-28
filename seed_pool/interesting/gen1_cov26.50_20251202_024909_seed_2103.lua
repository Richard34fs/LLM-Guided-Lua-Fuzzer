function manipulate_string(str)
    local new_str = ""
    for i = 1, 1000 do
        new_str = new_str .. string.rep(str, i) .. "\n"
    end

    -- Create local versions of functions from the standard library
    local gsub = string.gsub
    local rep = string.rep

    -- Use the local variables instead of the global ones
    return gsub(new_str, "(%a)(%a%a)", "%2%1")
end