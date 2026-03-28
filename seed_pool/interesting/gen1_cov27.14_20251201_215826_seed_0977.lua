local piece1 = "function coroutine_recursion(n) if n == 0 then return 1 end"
local piece2 = "local co = coroutine.create(function() return coroutine_recursion(n - 1) end)"
local piece3 = "local status, result = coroutine.resume(co) if not status then error(result) end return result end"
local func = load(piece1 .. piece2 .. piece3)