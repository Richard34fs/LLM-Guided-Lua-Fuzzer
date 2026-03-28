local function manipulate_string(str)
    local new_str = ""
    for i = 1, 100 do
        new_str = new_str .. string.rep(str, i) .. "\n" -- removed newline character
    end
    new_str = string.gsub(new_str, "A", "B")           -- added space between gsub arguments
    return new_str
end