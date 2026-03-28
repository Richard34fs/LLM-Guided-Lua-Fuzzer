local function generate_code(massive_strings)
    local output = setmetatable({}, {
        __tostring = function() return table.concat(output, "\n") end
    })

    for _, str in ipairs(massive_strings) do
        local repeated = string.rep(str, 1000)

        local modified = string.gsub(repeated, "bad", "good")
        table.insert(output, modified)
    end

    return tostring(output)
end