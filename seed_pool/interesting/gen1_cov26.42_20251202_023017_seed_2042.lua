local function manipulate_string(str)
    local count = 0
    for _ in string.gmatch(str, "!") do
        count = count + 1
    end
    local repeated = string.rep("!", count)
    local replaced = string.gsub(str, "!", "")
    local concatenated = str .. repeated
    return concatenated
end