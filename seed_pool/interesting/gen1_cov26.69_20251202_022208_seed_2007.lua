function churn_memory()
    do
        local function closure()
            local tmp = {}
            setmetatable(tmp, {__mode  = "k"})
            tmp[1] = {}
            tmp = nil
            collectgarbage()
        end
        closure()
    end

    do
        local function local_func()
            local tmp = {}
            setmetatable(tmp, {__mode  = "k"})
            tmp[1] = {}
            tmp = nil
            collectgarbage()
        end
        local_func()
    end

    do
        local anonymous_func = function()
            local tmp = {}
            setmetatable(tmp, {__mode  = "k"})
            tmp[1] = {}
            tmp = nil
            collectgarbage()
        end
        anonymous_func()
    end

    do
        local x = 10
        local function closure()
            local x = 20
            print(x) -- Prints 20 (local variable within closure)
        end
        closure()
        print(x) -- Prints 10 (global variable)
    end

    do
        local x = 10
        local function nested_func()
            print(x) -- Prints 10 (outer scope variable)
        end

        local function closure()
            local x = 20
            nested_func() -- Prints 10 (outer scope variable)
        end
        closure()
    end

    do
        local x = 10
        local function nested_func()
            print(x) -- Prints 10 (outer scope variable)
        end

        local function closure()
            local x = 20
            nested_func() -- Prints 10 (outer scope variable)
        end

        local function another_closure()
            local x = 30
            closure() -- Prints 20 (local variable within closure)
            print(x) -- Prints 30 (local variable within another_closure)
        end
        another_closure()
    end
end