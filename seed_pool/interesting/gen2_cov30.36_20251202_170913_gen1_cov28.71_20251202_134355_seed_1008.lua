-- ERROR_INJECTION
function functionA()
    local t = setmetatable({}, {__mode = 'k'})
    t[1] = t
    error("Error injection!")  -- Add error injection here
    t = nil
    collectgarbage()
end

function functionB()
    local t = setmetatable({}, {__mode = 'k'})
    t[1] = t
    t = nil
    collectgarbage()

    return 1, 2, 3
end

local coroutineA = coroutine.create(functionA)
local coroutineB = coroutine.create(functionB)
coroutine.resume(coroutineA)
pcall(functionB)  -- Wrap functionB in pcall to catch errors