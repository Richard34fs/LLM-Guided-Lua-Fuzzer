t = {}
for i=1,1000 do
    t[i] = "value" .. i
end
for i=1,1000 do
    t["key" .. i], t[i] = i, i  -- Mutation applied here
end