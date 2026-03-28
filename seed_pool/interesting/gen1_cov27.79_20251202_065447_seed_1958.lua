-- FORMATTING_MUTATION: Add a comment
t = {}  -- This is a comment
for i=1,1000 do
    t[i] = "value" .. i
    t["key" .. i] = i
end