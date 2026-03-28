local function massive_string(n)
    local s = ""
    for i = 1, n do
        s = s .. string.rep("A", 10000) .. string.rep("B", 20000) .. string.rep("C", 30000)
    end
    s = string.gsub(s, "XXX", "")
    return s
end

local a, b, c = 1, 2, 3  -- multiple declarations
local d = 4  -- simple declaration
d = d + 1  -- assignment on separate line
if d > 5 then  -- interleaved with block
    print("d is greater than 5")
end

return massive_string(10)