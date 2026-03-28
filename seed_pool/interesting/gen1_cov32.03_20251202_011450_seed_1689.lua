local function test_integer_overflow(a, b)
    assert((a + b) > a, "Integer overflow detected")
end

local function test_division_by_zero(a, b)
    assert(b ~= 0, "Division by zero detected")
end

local function test_min_max_integers(a)
    local min_int = -2^31
    local max_int = 2^31 - 1
    assert(a > min_int and a < max_int, "Integer out of range")
end

local function test_bitwise_operations(a, b)
    assert((a & b) == (a | b), "Bitwise operations result mismatch")
end

-- Shadow built-in functions with local versions
local table = setmetatable({}, {
    __index = function(t, k)
        if k == 'insert' then
            return function(table, pos, value)
                -- Do nothing
            end
        else
            return _G.table[k]
        end
    end
})

local ipairs = function(t)
    local i = 0
    return function()
        i = i + 1
        return i, t[i]
    end
end

local print = function(...)
    -- Do nothing
end
-- Invoke both the global and local versions to test shadowing, scope, and binding
test_integer_overflow(2^31 - 1, 1)
table.insert({}, 1, "value")
print("Hello, world!")