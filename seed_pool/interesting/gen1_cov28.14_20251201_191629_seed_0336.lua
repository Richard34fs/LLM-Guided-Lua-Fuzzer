local function manipulate_string(input)
    local output = ""
    for i = 1, 100 do
        output = output .. string.rep(string.gsub(input, "pattern" .. i, ""), i)
    end
    return output
end

local a, b, c = 1, 2, 3
print(a, b, c)

if a < b then
    print("a is less than b")
elseif a > b then
    print("a is greater than b")
else
    print("a and b are equal")
end