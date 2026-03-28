local function manipulate_string(str)
    local result = ""

    do  -- New block added
        for i = 1, #str do
            if i % 2 == 0 then
                result = result .. string.rep(string.sub(str, i, i), 3)
            else
                result = result .. string.gsub(string.sub(str, i, i), "[aeiou]", "")
            end
        end
    end

    return result
end