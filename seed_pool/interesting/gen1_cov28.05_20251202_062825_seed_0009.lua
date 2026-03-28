t = {}
for i=1,10 do
    t[i] = i*2
end
do -- Nested block
    for k,v in pairs(t) do
        print(k, v)
    end
end