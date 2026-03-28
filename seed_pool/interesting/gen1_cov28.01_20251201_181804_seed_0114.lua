function coroutine_stress(n)
    local function recurse(n)
        if n > 0 then
            return recurse(n - 1)
        end
    end
    local co = coroutine.create(function()
        recurse(n)
    end)
    local status, err = coroutine.resume(co)
    if not status then
        error(err)
    end

    -- Mutation: simulate garbage collection or finalizers
    local metatable_with_gc = { __gc = function(t) print("Finalizer called") end }
    setmetatable({}, metatable_with_gc)
    local userdata_obj = ffi.new("void *", 42)
end