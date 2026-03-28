local function generate_code(num_lines)
    local code = {}
    for i = 1, num_lines do
        code[i] = string.rep("string.gsub('', '', '') .. ", math.random(10, 20)) .. ";"
    end
    return table.concat(code, "\n")
end
local global_print = print -- capture the global print function
local local_print = function(...) -- define a local print function
    global_print("Local print:", ...)
end
table.insert = function(t, v)
    t[#t + 1] = v
end
ipairs = function(t)
    return function(t, i)
        i = i + 1
        local v = t[i]
        if v then
            return i, v
        end
    end, t, 0
end
print("Global print:")
print(generate_code(15))
local_print("Local print:")
local_print(generate_code(15))