local t = {}
do
    for i=1,10 do
        -- Add a comment
        t[i] = i
    end
    local s = ""
    if true then  -- Aninhamento de blocos
        for k,v in pairs(t) do
            s = s .. tostring(v)
        end
    end
    local n = 0
    while n < 100 do  -- Aninhamento de blocos
        n = n + #s
    end
end
print(n)