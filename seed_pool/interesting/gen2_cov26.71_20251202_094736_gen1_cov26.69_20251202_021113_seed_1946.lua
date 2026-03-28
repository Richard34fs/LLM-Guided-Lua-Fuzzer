local function manipulate_string(s)
    local c = string.rep("%", #s)   -- Interchange this line with the next one
    local t = {}                   -- Interchange this line with the previous one
    for i = 1, #s do
        s, _ = string.gsub(s, c, "")
        t[i] = s
    end

    error("deliberate error")   -- add this line
    return table.concat(t)
end