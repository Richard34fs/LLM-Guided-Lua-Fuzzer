function coroutine_stress_test(n)
    local function recursive_coroutine(n)
        if n > 0 then
            print("Coroutine", coroutine.running(), "is stressed with level", n)
            coroutine.yield(recursive_coroutine(n - 1))
        else
            print("Coroutine", coroutine.running(), "has reached the base case")
        end
    end

    local function generate_random_variable_name(length)
        local characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        local random_string = ""

        for i = 1, length do
            local index = math.random(1, #characters)
            random_string = random_string .. characters:sub(index, index)
        end

        return random_string
    end

    local variable_name = generate_random_variable_name(20)

    local main_coroutine = coroutine.create(function()
        recursive_coroutine(n)
    end)

    coroutine.resume(main_coroutine)
end