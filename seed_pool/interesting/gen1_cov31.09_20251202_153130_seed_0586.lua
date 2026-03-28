local t = {}
for i = 1, 1000 do
    local key = tostring(i)
    if i % 2 == 0 then
        key = i / 2
    end
    t[key] = i
end
print(#t)

-- METATABLE_MUTATION: Modify the metatable of `t` by adding a new field called "newfield" with value "test".
local mt = getmetatable(t) or {}
mt.newfield = "test"
setmetatable(t, mt)

-- Test the modified metatable
print(t.newfield)  -- Output: test