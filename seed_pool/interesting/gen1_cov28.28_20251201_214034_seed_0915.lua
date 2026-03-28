local t = {}
for i = 1, 10 do
    t[i] = i
end
for k, v in pairs(t) do
    t[k] = "a\nb"  -- Mutated literal: string with newline character
end
for k, v in pairs(t) do
    t[k] = 3.14    -- Mutated literal: floating-point number
end
print(t[5])