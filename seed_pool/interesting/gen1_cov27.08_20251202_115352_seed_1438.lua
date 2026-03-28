function manipulate_strings(n)
    local s = ""
    for i = 1, n do
        s = s | bit32.bnot(i) | i -- replaced .. with |
    end
    s = string.gsub(s, (1 << 8) & 0xFF, "y") -- replaced "xxxx" with (1 << 8) & 0xFF
    return s
end