local function generate_code(massive_strings)
    return (function()
        local output = {}
        local repeat_string = function(str)
            return string.rep(str, 1000)
        end

        for _, str in ipairs(massive_strings) do
            local repeated = repeat_string(str)
            local modified = string.gsub(repeated, "bad", function(match)
                return "good" .. match
            end)
            table.insert(output, modified)
        end

        return table.concat(output, "\n")
    end)()
end
local output = {}