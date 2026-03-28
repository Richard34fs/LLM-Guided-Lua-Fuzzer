function check_stack_limit(...)
    local args = {...}
    if #args > 0 then
        print("Stack limit not reached")
        check_stack_limit(unpack(args))
    else
        print("Stack limit reached")
    end
end
local mt = {
    __tostring = function(t)
        return "complex table"
    end,
    __add = function(t1, t2)
        return "result of adding two tables"
    end,
    __call = function(t, ...)
        return "result of calling a table"
    end
}
local t = {a = 1, b = 2, c = 3}
setmetatable(t, mt)
print(tostring(t))
print(t + t)
print(t("arg1", "arg2"))