local m = {}
m.__index = function(t, k)
    return t[k] or m
end
m.__newindex = function(t, k, v)
    rawset(t, k, v)
    t[k] = t
end
m.__band = function(a, b) -- Mutated operator: bitwise AND (&)
    return a & b
end
m.__bnot = function(a) -- Mutated operator: bitwise NOT (~)
    return ~a
end
m.__bor = function(a, b) -- Mutated operator: bitwise OR (|)
    return a | b
end
m.__bxor = function(a, b) -- Mutated operator: bitwise XOR (~)
    return a ^ b
end
m.__lshift = function(a, b) -- Mutated operator: bitwise left shift (<<)
    return a << b
end
m.__rshift = function(a, b) -- Mutated operator: bitwise right shift (>>)
    return a >> b
end
m.__call = function(t, ...)
    return t(...)
end
setmetatable(m, m)