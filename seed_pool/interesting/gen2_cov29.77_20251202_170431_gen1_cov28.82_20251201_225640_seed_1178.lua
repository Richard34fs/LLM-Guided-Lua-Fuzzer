function manipulate_string(s)
    local t = {}
    local i = 1
    while i <= #s do
        if i % 2 == 0 then
            t[i] = string.rep(s:sub(i, i), 3)
        else
            t[i] = string.gsub(s:sub(i, i), "[aeiou]", "")
        end
        i = i + 1
    end
    return table.concat(t)
end
local chunk = "print('Hello World!')"
load(chunk)() -- Mutated code: dynamically load and execute a chunk of code