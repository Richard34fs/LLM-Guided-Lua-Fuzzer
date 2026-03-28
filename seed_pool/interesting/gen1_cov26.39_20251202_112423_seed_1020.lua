function manipulate_string(s)
    local result = ""    -- Declaration of 'result' moved up
    local count = string.match(s, "(%d+)")
    local char = string.match(s, "%[(.+)%]")
    for i = 1, count do
        result = result .. string.rep(char, i)
    end
    return string.gsub(result, char, "")
end