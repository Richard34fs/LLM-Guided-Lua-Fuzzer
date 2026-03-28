function manipulate_massive_strings(n)
    local s = ""
    for i in ipairs({1, 2, 3}) do
        s = s .. string.rep("x", 10000) .. "\n"
    end
    return string.gsub(s, "xxxxxxxxxx", "")
end