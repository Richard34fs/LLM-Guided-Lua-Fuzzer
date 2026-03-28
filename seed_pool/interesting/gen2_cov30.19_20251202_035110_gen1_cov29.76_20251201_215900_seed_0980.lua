function mutate(code)
    local chunk = string.format('return function() %s end', code)
    local func = loadstring(chunk)   -- load the dynamic chunk
    return func()   -- execute the loaded function and return the mutated code
end
local t = {}
t["1"] = 1
print(t[1])
local s = "1"
local a, b, c = 1, 2, 3  -- Mixed declaration statement
s = s + 1
print(s)
for i = 1, 5 do
    local x = i  + "1"
    print(x)
end