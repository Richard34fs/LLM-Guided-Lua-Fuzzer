local function manipulate_massive_strings(n)
    local result = ""
    while n > 0 do
        result = result .. string.rep("a", n) .. "\n"
        n = n - 1
    end
    return result
end