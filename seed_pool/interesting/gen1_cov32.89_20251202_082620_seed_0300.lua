local function manipulate_string(str)
    local result = ""
    local count = 0
    while count < 10 do
        result = result .. string.rep(str, count) .. "\n"
        str = string.gsub(str, "a", "")
        count = count + 1
    end
    return result
end
local function manipulate_string_with_shadowing(str)
    local result = ""
    local count = 0
    while count < 10 do
        result = result .. string.rep(str, count) .. "\n"
        str = string.gsub(str, "a", "")
        count = count + 1
    end
    return result
end
local original_string_rep = string.rep
string.rep = function(str, count)
    if type(str) ~= "string" then
        error("invalid argument 'str' to 'rep' (string expected, got " .. type(str) .. ")")
    end
    if type(count) ~= "number" or math.floor(count) ~= count or count < 0 then
        error("invalid argument 'count' to 'rep' (positive integer expected, got " .. type(count) .. ")")
    end
    return original_string_rep(str, count)
end
local original_string_gsub = string.gsub
string.gsub = function(str, pattern, replace)
    if type(str) ~= "string" then
        error("invalid argument 'str' to 'gsub' (string expected, got " .. type(str) .. ")")
    end
    if type(pattern) ~= "string" then
        error("invalid argument 'pattern' to 'gsub' (string expected, got " .. type(pattern) .. ")")
    end
    if replace and type(replace) ~= "string" then
        error("invalid argument 'replace' to 'gsub' (string expected, got " .. type(replace) .. ")")
    end
    return original_string_gsub(str, pattern, replace)
end
print("Manipulating string using original functions:")
print(manipulate_string("Hello World!"))
print("Manipulating string with shadowed functions:")
print(manipulate_string_with_shadowing("Hello World!"))