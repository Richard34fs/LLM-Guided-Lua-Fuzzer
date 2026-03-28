local function f1()
    return 42
end

local function f2()
    return "Hello, world!"
end

local t = {}
for i = 1, 1000 do
    t[tostring(i)] = i
    t[i] = i
end