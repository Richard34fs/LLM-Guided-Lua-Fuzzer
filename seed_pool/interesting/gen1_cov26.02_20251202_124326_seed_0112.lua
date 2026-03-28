local function string_manipulation(str)
    local result = ""
    for i = 1, 100 do
        result = result .. string.rep(string.gsub(str, ".", ""), i)
    end
    return result, nil, "extra value" -- ADDED VALUES
end