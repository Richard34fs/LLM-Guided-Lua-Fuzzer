local function manipulate_string(str)
    local repeated = string.rep(str, 1000)
    local modified = string.gsub(repeated, "foo", "bar")
    local result = ""
    for i = 1, #modified do
        result = result .. modified:sub(i, i)
    end

    return result
end

local function coroutine_func()
    local str = "foo"
    local coroutine_result = coroutine.create(function ()
        return manipulate_string(str)
    end)

    local success, result = coroutine.resume(coroutine_result)
    if success then
        print("Coroutine result: ", result)
    else
        print("Coroutine error: ", result)
    end
end

coroutine_func()