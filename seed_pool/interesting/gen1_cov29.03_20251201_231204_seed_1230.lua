local t = {a=1}
for i=1,10 do
    t[i] = i & i    -- Mutated line
    t[i] = tostring(i)
    t["foo"..i] = i
    t[t] = i
end
print(t.a, t[1], t["foo1"], t[t])