local function main()
    local t = {}
    t["foo"] = 42
    t["bar"] = "42"

    local function foo(x)
        if x % 2 == 0 then
            return x + 1
        else
            return tostring(x)
        end
    end
    
    for i = 1, 5 do
        t["foo"] = foo(t["foo"])
    end
    
    print(type(t["foo"]))
end
main()