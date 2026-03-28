function manipulate_strings(n)
    local result = ""
    for i = 1, n do
        result = result .. string.rep("a", i) .. "\n"
    end
    return string.gsub(result, "a", "")
end
local global_variable = "This is a global variable"
local function manipulate_strings2()
    local result = ""
    for i = 1, n do
        result = result .. string.rep("a", i) .. "\n"
    end
    return string.gsub(result, "a", "")
end
local function manipulate_strings3(n)
    local result = ""
    for i = 1, n do
        result = result .. string.rep("a", i) .. "\n"
    end
    return string.gsub(result, "a", "")
end
local manipulate_strings4 = function(n)
    local result = ""
    for i = 1, n do
        result = result .. string.rep("a", i) .. "\n"
    end
    return string.gsub(result, "a", "")
end
local global_variable2 = "This is a global variable with the same name as a local variable"