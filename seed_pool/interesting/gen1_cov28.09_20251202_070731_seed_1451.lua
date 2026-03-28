function manipulate_massive_strings(str)
    local result = ""
    local pattern = "[^a-zA-Z0-9]"
    for i = 1, string.len(str) do
        if i % 2 == 0 then
            result = result .. string.rep(string.sub(str, i, i), 3)
        else
            result = result .. string.gsub(string.sub(str, i, i), pattern, "")
        end
    end
    return result
end

function coroutine_manipulate_massive_strings(str)
    local co = coroutine.create(function(str)
        local result = ""
        local pattern = "[^a-zA-Z0-9]"
        for i = 1, string.len(str) do
            if i % 2 == 0 then
                result = result .. string.rep(string.sub(str, i, i), 3)
            else
                result = result .. string.gsub(string.sub(str, i, i), pattern, "")
            end
        end
        coroutine.yield(result)
    end)

    local success, result = coroutine.resume(co, str)
    return result
end