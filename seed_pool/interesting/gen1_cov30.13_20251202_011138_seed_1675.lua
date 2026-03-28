function manipulate_strings(n)
    local result = ""
    for i = 1, n do
        local pattern = string.rep("a", i) .. "b" .. string.rep("c", i)
        local replacement = string.rep("x", i) .. "y" .. string.rep("z", i)
        result = result .. string.gsub("abcabcc", pattern, replacement)
    end
    return result
end
local function gsub(s, p, r)
    return string.gsub(s, p, r)
end
local function rep(s, n)
    return string.rep(s, n)
end
result = manipulate_strings(10)
print(result)