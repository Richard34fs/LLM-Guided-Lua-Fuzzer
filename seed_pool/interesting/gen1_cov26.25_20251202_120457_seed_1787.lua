local function manipulate_string(s)
    local repeated = string.rep(s, 1000)
    local modified = string.gsub(repeated, "a", "b")
    do -- added block
        local result = ""
        for i = 1, #modified do
            result = result .. string.sub(modified, i, i)
        end
        return result
    end
end