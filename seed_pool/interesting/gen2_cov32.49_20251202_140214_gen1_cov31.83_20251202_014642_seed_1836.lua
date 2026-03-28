local function manipulate_string(input_string)
    local repeated_string = string.rep(input_string, 10000)
    local modified_string = string.gsub(repeated_string, "xyz", "abc")
    local final_string = ""
    for i = 1, #modified_string do
        final_string = final_string .. string.sub(modified_string, i, i)
    end
    return final_string
end
local function manipulate_string_with_closure()
    local repeated_string = string.rep("xyz", 10000)
    local modified_string = string.gsub(repeated_string, "xyz", "abc")
    local final_string = ""
    for i = 1, #modified_string do
        final_string = final_string .. string.sub(modified_string, i, i)
    end
    return function()
        return final_string
    end
end
local closure = manipulate_string_with_closure()
local func = load("return " .. manipulate_string("xyz"))
print(func())
local func = load("return " .. closure())
print(func())