local t = {}
for i = 1, 1000 do
    local key = tostring(i) .. "foo"
    t[key] = i
end

do
    local function f()
        return 42
    end

    if f() == 42 then
        print("The answer is 42!")
    else
        print("The answer is not 42.")
    end
end