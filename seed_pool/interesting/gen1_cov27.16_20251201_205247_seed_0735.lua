local function generate_code(input)
    local pattern = "pattern"
    local replacement = "replacement"
    local count = 1000

    local coroutine_func = coroutine.create(function()
        for i = 1, count do
            input = string.rep(input, i) .. "\n"
        end
        local result = string.gsub(input, pattern, replacement)
        return result
    end)
    local status, result = coroutine.resume(coroutine_func)

    if status then
        return result
    else
        error(result)
    end
end