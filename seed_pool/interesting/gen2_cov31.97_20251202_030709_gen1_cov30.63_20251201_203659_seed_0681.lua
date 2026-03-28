local t = setmetatable({}, {
    __index = function(t, k)
        return tostring(k) .. "foo"
    end
})
pcall(function()  -- Wrap the following code in a catchable block
    local s = 0
    for i=1,10 do
        s = s + #t[i] / i
    end
    print(s)

    error("deliberate error")  -- Insert deliberate call to `error()`
end)