function manipulate_string(input)
    local repeated = string.rep(input, 1000); local modified = string.gsub(repeated, "abc", "def"); local result = ""
    for i = 1, #modified do
        result = result .. string.sub(modified, i, i) end

    return result
end