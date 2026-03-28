local a, b, c = 1, 2, 3
d = 4
e = 5
f = 6
local function massive_string_manipulation(str)
    local new_str = ""
    for i = 1, 100 do
        new_str = new_str .. string.rep(str, i) .. "\n"
    end
    new_str = string.gsub(new_str, "a", "z")
    return new_str
end