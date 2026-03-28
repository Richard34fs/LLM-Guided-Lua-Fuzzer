local function massive_string(n)
    local s = ""
    for i = 1, n do
        s = s .. string.rep("a", 10^6)
    end
    return string.gsub(s, "a", "")
end

local function error_injection()
    error("deliberate error") -- deliberate call to `error()`
end

local function assert_false()
    assert(false, "deliberate assertion failure") -- deliberate call to `assert(false)`
end

local function invalid_indexing()
    local t = {}
    return t[0]  -- invalid indexing within a block potentially captured by `pcall` / `xpcall`
end