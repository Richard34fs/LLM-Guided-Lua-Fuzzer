function manipulate_string(s)
    local repeated = string.rep(s, 10000);
    local replaced = string.gsub(repeated, "a", "")
    local result = ""
    for i = 1, #replaced do
        result = result .. string.sub(replaced, i, i)
    end
    return result
end