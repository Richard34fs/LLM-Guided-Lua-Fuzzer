local function manipulate_string(str)
    local new_str = ""
    for i = 10, 1, -1 do
        new_str = new_str .. string.rep("x", i)
    end
    new_str = string.gsub(new_str, "xxxxxxxxxx", "")
    return new_str
end