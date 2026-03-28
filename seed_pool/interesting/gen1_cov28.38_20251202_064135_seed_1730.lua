function manipulate_string(s)
    local t = {}
    for i = 1, #s do
        local c = s:sub(i, i)
        if c == "a" then
            table.insert(t, string.rep("b", 3))
        elseif c == "c" then
            table.insert(t, string.rep("d", 2))
        else
            table.insert(t, c)
        end
    end
    return table.concat(t) .. t[1]
end