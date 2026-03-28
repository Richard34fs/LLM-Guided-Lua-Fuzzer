function manipulate_strings(num_strings, string_length)
    local result = {}

    for i = 1, num_strings do
        local pattern = string.rep("x", string_length - 2) .. "xx"
        local replaced = string.gsub("xxxxxxxxxx", pattern, "")

        -- Inject error within a potentially catchable block via pcall or xpcall
        local status, err = pcall(function()
            result[i] = replaced .. replaced
            error("Error injected for testing")  -- Replace with desired error message
        end)

        if not status then
            print("Error caught: ", err)
        end
    end

    return result
end