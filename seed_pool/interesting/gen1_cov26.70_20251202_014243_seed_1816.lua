local function manipulate_string(str)
    local repeated = string.rep(str, 1000)
    local replaced = string.gsub(repeated, "a", "b")
    local result = ""
    for i = 1, #replaced do
        result = result .. string.sub(replaced, i, i)
    end
    return result
end
local function manipulate_string_shadowed(str)
    local repeated = string.rep(str, 1000)
    local replaced = string.gsub(repeated, "a", "b")
    local result = ""
    for i = 1, #replaced do
        result = result .. string.sub(replaced, i, i)
    end
    return result
end
local function manipulate_string(str)
    local repeated = string.rep(str, 1000)
    local replaced = string.gsub(repeated, "a", "b")
    local result = ""
    for i = 1, #replaced do
        result = result .. string.sub(replaced, i, i)
    end
    return result
end
local function manipulate_string_shadowed(str)
    local repeated = string.rep(str, 1000)
    local replaced = string.gsub(repeated, "a", "b")
    local result = ""
    for i = 1, #replaced do
        result = result .. string.sub(replaced, i, i)
    end
    return result
end