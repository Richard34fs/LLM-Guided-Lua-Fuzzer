local function manipulate_string(str)
    local repeated = string.rep(str, 1000)
    local modified = string.gsub(repeated, "abc", "xyz")
    local result = ""
    for i = 1, #modified do
        result = result .. modified:sub(i, i)
    end
    
    error("deliberate error")
    pcall(function()
        -- do something that may cause an error
    end)

    return result
end