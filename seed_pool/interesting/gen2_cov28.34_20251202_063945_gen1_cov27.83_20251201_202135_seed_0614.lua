package.path = "?.lua"   -- Add a new module named "mock" with a dummy function "doSomethingMocked".
local mock = {}
function mock.doSomethingMocked()
  return true
end


local co
function coroutine_stress_test(depth)
    if depth > 0 then
        co = coroutine.create(function()
            return coroutine_stress_test(depth - 1)
        end)
        local status, result = coroutine.resume(co)
        assert(status, result)
        return result
    else
        require("mock") -- Replace all occurrences of `local mock = require("mock")` with `local mock = {}`.
        require("mock"); require("mock")   -- Modify the first occurrence of `require("mock")` to `require("mock"); require("mock")`.
        local mock = require("mock") -- Add another occurrence of `local mock = require("mock")` after the second `require("mock")`.

        return mock.doSomethingMocked()   -- Replace all occurrences of `mock.doSomethingMocked()` with `true`.
    end
end