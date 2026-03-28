function manipulate_strings(n)
    local result = ""
    for i = 1, n do
        local pattern = string.rep("a", i) .. "b" .. string.rep("c", i)
        local replacement = string.rep("x", i) .. "y" .. string.rep("z", i)
        result = result .. string.gsub("abcabcc", pattern, replacement)
    end
    return result
end
local metatable = {
    __index = function(table, key)
        if key == "gsub" then
            return function(s, p, r)
                return string.gsub(s, p, r)
            end
        elseif key == "rep" then
            return function(s, n)
                return string.rep(s, n)
            end
        else
            return nil
        end
    end
}
setmetatable(_G, metatable)
result = manipulate_strings(10)
print(result)