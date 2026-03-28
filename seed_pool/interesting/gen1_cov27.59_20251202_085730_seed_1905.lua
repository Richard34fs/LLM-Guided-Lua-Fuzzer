local function manipulate_strings(s)
    local table = { insert = table.insert, remove = table.remove }
    local new_str = ""
    local count = 0
    while count < 10 do
        new_str = new_str .. string.rep(s, count)
        new_str = string.gsub(new_str, "a", "b")
        count = count + 1
    end
    return new_str
end