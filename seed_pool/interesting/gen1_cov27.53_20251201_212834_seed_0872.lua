local function manipulate_massive_strings(n)
    local result = ""
    for i = 1, n do
        result = result .. string.rep("!", 10000)
    end

    if n > 10 then
        result = string.gsub(result, "!!", "")
    else
        result = string.sub(result, 1, -2)
    end

    return result
end