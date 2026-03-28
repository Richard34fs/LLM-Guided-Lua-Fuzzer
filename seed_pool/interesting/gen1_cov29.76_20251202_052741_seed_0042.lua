local t = {}
local co = coroutine.wrap(function()
    local i = 1
    while true do
        local key = tostring(i) .. "A"
        t[key] = i
        i = i + 1
        coroutine.yield()  -- Pass control back to the caller and allow other coroutines to run
    end
end)
co()  -- Start the coroutine and resume execution until it yields or finishes