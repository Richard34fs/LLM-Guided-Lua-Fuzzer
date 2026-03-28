local function generate_massive_strings(num)
    local result = {}
    for i = 1, num do
        local pattern = string.rep("a", i)
        local replacement = string.rep("b", i * 2)
        local modified = string.gsub("aaaaaaaaaa", pattern, replacement)
        table.insert(result, modified)
    end
    return table.concat(result, "")
end
local function test()
    local result = generate_massive_strings(10)
    if type(result) ~= "string" then
        error("Invalid result: expected string, got " .. type(result))
    end
    assert(#result == 55, "Invalid length for result")
end
pcall(test)