local function createClosure()
    local t = {}
    t["foo"] = "bar"
    t[1] = 2
    for i = 1, 5 do
        if i % 2 == 0 then
            t[i] = true
        else
            t[i] = "string" .. i
        end
    end
    local function func()
        t["foo"] = t
        print(t["foo"][1])
    end

    return func
end
local closure = createClosure()
closure()