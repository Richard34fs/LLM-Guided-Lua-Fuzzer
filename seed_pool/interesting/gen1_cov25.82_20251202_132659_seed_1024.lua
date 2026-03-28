local function manipulate_string(input)
    local result = ""
    local t = {}
    setmetatable(t, {__gc = function() print("Table t is being garbage collected.") end})
    result = result .. string.rep(input, 100)
    result = string.gsub(result, "a", "b")
    return result
end