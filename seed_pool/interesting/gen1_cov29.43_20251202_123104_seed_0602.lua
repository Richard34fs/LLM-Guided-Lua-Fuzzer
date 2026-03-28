local function manipulate_string(str)
    local result = ""
    local replaced = string.gsub(str, "pattern", "")
    for i = 1, 10 do
        result = result .. string.rep(replaced, i)
    end
    return result
end

local a, b, c = manipulate_string("foo"), manipulate_string("bar"), manipulate_string("baz")
print(a, b, c)