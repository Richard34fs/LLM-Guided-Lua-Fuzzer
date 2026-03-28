-- STRATEGY: LITERAL_MUTATION
local t = { "\a", "b" }  -- modified literal in table definition
t[1] = t                 -- modified assignment
print(t[1][2])          -- modified indexing
local s = "1\n" + 1     -- modified literal in arithmetic expression
print(s)                -- modified print
for i = 1, 3 do
    local s = "\b"      -- modified literal in loop
    print(type(s))       -- modified print
    s = 0                -- modified assignment
    print(type(s))       -- modified print
end