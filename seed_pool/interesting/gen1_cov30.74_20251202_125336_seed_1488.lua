local function massive_string(n)
    local result = ""
    for i = 1, n do
        result = result .. string.rep("a", 10000)
    end
    return result
end

local complex_table = {
    a = "b",
    c = "d",
    e = "f",
    g = massive_string(10),
    h = function()
        return "i"
    end,
    j = {
        k = "l",
        m = "n",
        o = "p"
    }
}