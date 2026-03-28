function recursive_call(f, ...)
    f(...)
    if ... then
        recursive_call(f, ...)
    end
end
local function check_stack_limit()
    local arg = { "a", "b", "c" }
    recursive_call(print, table.unpack(arg))
    recursive_call(print, table.unpack(arg), table.unpack(arg))
    recursive_call(print, table.unpack(arg), table.unpack(arg), table.unpack(arg))
end
local complex_table = {
    a = 1,
    b = 2,
    c = function() return 3 end,
    d = {
        e = 4,
        f = 5,
        g = {
            h = 6,
            i = 7,
            j = 8
        }
    }
}