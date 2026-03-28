function manipulate_strings(n)
    local s = ""
    do
        for i = 1, n do
            s = s .. string.rep("x", i) .. "\n"

            local function use_i()
                return string.rep("y", i)
            end

            if i == 3 then
                s = s .. use_i()
            end
        end
    end

    return string.gsub(s, "xxx", "")
end