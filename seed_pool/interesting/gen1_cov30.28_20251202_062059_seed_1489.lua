local s = string.rep("a", 2000)
for i = 1, 5 do
    local pattern = string.rep(".", i)

    local string_gsub = function(s, pattern, replacement)
        return string.gsub(s, pattern, replacement)
    end
    
    s = string_gsub(s, pattern, "")
    
    print(#s)
end