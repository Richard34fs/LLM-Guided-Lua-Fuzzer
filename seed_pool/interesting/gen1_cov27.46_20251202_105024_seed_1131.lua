function test_integer_overflow()
    local a = 2^31 - 1
    local b = 2^31 - 1
    local result = a + b
    assert(result < 0)

    -- Create a metatable with a __gc metamethod
    local mt = {
        __gc = function(self)
            print("Metamethod called!")
        end
    }

    -- Create two tables with the same metatable
    local t1 = {}
    setmetatable(t1, mt)

    local t2 = {}
    setmetatable(t2, mt)
end