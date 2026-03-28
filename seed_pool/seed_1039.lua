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