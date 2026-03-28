function functionA()
    local t = setmetatable({}, {__mode = 'k'})
    t[1] = t
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
coroutine.resume(coroutineB)