local function manipulate_string(str)
    local new_str = {}
    for i = 1, 100 do
        new_str[i] = string.rep(str, i) .. "\n"
    end
    new_str = string.gsub(new_str, "abc", "def")
    return table.concat(new_str, "")
end