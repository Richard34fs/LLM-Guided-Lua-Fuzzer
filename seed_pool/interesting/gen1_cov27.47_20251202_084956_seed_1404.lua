local function manipulate_string(str)
    local modified = ""
    local count = 0

    while count < 100 do
        modified = modified .. string.rep("a", 1000)
        count = count + 1

        if count == 50 then
            error("Error injected")  -- Inject an error at count = 50
        end
    end

    modified = string.gsub(modified, "a", "")

    return modified
end